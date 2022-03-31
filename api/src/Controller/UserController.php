<?php

namespace App\Controller;

use App\DataPersister\UserDataPersister;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use App\Entity\User;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractController
{

    private $_entityManager;
    private $_passwordEncoder;

        public function __construct(EntityManagerInterface $_entityManager, UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->_entityManager = $_entityManager;
        $this->_passwordEncoder = $passwordEncoder;
    }

    /**
     * @Route("/api/users", name="app_user_create", methods={"POST"})
     */
    public function __invoke(Request $request, MailerInterface $mailer, UserRepository $userRepository)
    {
        $requestData = json_decode($request->getContent(), true);
        $request->request->replace(is_array($requestData) ? $requestData : array());
        $email = $request->request->get('email');
        $password = $request->request->get('password');

        if ($email === null || $password === null) {
            return new JsonResponse(
                [
                    "error" => "Mail ou mot de passe vide",
                    "message" => "Veuillez renseigner un mail et un mot de passe !"
                ]
                , Response::HTTP_BAD_REQUEST);
        }

        $user = $userRepository->findOneBy(['email' => $email]);
        if ($user) {
            return new JsonResponse(
                [
                    "error" => "Utilisateur existant",
                    "message" => "Ce mail a déjà été utilisé !"
                ]
                , Response::HTTP_BAD_REQUEST);
        }

        // User Creation
        $user = new User();
        $user->setEmail($email);

        // Hash password
        $hashPassword = $this->_passwordEncoder->encodePassword($user, $password);

        $user->setPassword($hashPassword);
        $this->_entityManager->persist($user);
        $this->_entityManager->flush();

        $emailToSend = (new Email())
        ->from('notifications@imolife.fr')
        ->to($email)
        ->subject('Bienvenue sur Wikifoot !')
        ->text('Félicitations, vous êtes inscrit sur notre API Wikifoot !')
        ->html('<p>Félicitations, vous êtes inscrit sur notre API Wikifoot !</p>');

         $mailer->send($emailToSend);

         return new JsonResponse(
            [
                "success" => "Utilisateur crée",
                "message" => "Bien joué !"
            ]
            , Response::HTTP_BAD_REQUEST);
    }
}
