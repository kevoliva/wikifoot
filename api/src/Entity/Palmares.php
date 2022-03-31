<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\PalmaresRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use ApiPlatform\Core\Annotation\ApiFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\OrderFilter;

/**
 * @ApiResource(
 *     normalizationContext={"groups"={"palmares:read", "competition:read"}},
 *     denormalizationContext={"groups"={"palmared:write", "competition:write"}}
 * )
 * @ApiFilter(
 *      OrderFilter::class, properties={"id", "year"},
 *      arguments={"orderParameterName"="order"})
 * @ORM\Entity(repositoryClass=PalmaresRepository::class)
 */
class Palmares
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     * @Groups({"palmares:read", "competition:read"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups({"palmares:read", "competition:read"})
     */
    private $year;

    /**
     * @ORM\ManyToOne(targetEntity=Competition::class, inversedBy="palmares")
     */
    private $competition;

    /**
     * @ORM\ManyToOne(targetEntity=Team::class, inversedBy="palmares")
     * @Groups("competition:read")
     */
    private $team;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getYear(): ?string
    {
        return $this->year;
    }

    public function setYear(string $year): self
    {
        $this->year = $year;

        return $this;
    }

    public function getCompetition(): ?Competition
    {
        return $this->competition;
    }

    public function setCompetition(?Competition $competition): self
    {
        $this->competition = $competition;

        return $this;
    }

    public function getTeam(): ?Team
    {
        return $this->team;
    }

    public function setTeam(?Team $team): self
    {
        $this->team = $team;

        return $this;
    }
}
