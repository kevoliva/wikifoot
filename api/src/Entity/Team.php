<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\TeamRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=TeamRepository::class)
 */
class Team
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\OneToMany(targetEntity=Palmares::class, mappedBy="team")
     */
    private $palmares;

    /**
     * @ORM\ManyToOne(targetEntity=Country::class, inversedBy="teams")
     */
    private $country;

    /**
     * @ORM\OneToMany(targetEntity=Player::class, mappedBy="team")
     */
    private $players;

    /**
     * @ORM\ManyToMany(targetEntity=Competition::class, inversedBy="teams")
     */
    private $competition;

    public function __construct()
    {
        $this->palmares = new ArrayCollection();
        $this->players = new ArrayCollection();
        $this->competition = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    /**
     * @return Collection<int, Palmares>
     */
    public function getPalmares(): Collection
    {
        return $this->palmares;
    }

    public function addPalmare(Palmares $palmare): self
    {
        if (!$this->palmares->contains($palmare)) {
            $this->palmares[] = $palmare;
            $palmare->setTeam($this);
        }

        return $this;
    }

    public function removePalmare(Palmares $palmare): self
    {
        if ($this->palmares->removeElement($palmare)) {
            // set the owning side to null (unless already changed)
            if ($palmare->getTeam() === $this) {
                $palmare->setTeam(null);
            }
        }

        return $this;
    }

    public function getCountry(): ?Country
    {
        return $this->country;
    }

    public function setCountry(?Country $country): self
    {
        $this->country = $country;

        return $this;
    }

    /**
     * @return Collection<int, Player>
     */
    public function getPlayers(): Collection
    {
        return $this->players;
    }

    public function addPlayer(Player $player): self
    {
        if (!$this->players->contains($player)) {
            $this->players[] = $player;
            $player->setTeam($this);
        }

        return $this;
    }

    public function removePlayer(Player $player): self
    {
        if ($this->players->removeElement($player)) {
            // set the owning side to null (unless already changed)
            if ($player->getTeam() === $this) {
                $player->setTeam(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection<int, Competition>
     */
    public function getCompetition(): Collection
    {
        return $this->competition;
    }

    public function addCompetition(Competition $competition): self
    {
        if (!$this->competition->contains($competition)) {
            $this->competition[] = $competition;
        }

        return $this;
    }

    public function removeCompetition(Competition $competition): self
    {
        $this->competition->removeElement($competition);

        return $this;
    }
}
