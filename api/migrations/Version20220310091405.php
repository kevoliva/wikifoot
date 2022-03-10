<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220310091405 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE competition (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE country (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE palmares (id INT AUTO_INCREMENT NOT NULL, competition_id INT DEFAULT NULL, team_id INT DEFAULT NULL, year VARCHAR(255) NOT NULL, INDEX IDX_FF4EE6497B39D312 (competition_id), INDEX IDX_FF4EE649296CD8AE (team_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE player (id INT AUTO_INCREMENT NOT NULL, team_id INT DEFAULT NULL, country_id INT DEFAULT NULL, name VARCHAR(255) NOT NULL, INDEX IDX_98197A65296CD8AE (team_id), INDEX IDX_98197A65F92F3E70 (country_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE team (id INT AUTO_INCREMENT NOT NULL, country_id INT DEFAULT NULL, name VARCHAR(255) NOT NULL, INDEX IDX_C4E0A61FF92F3E70 (country_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE team_competition (team_id INT NOT NULL, competition_id INT NOT NULL, INDEX IDX_5E3AC3FC296CD8AE (team_id), INDEX IDX_5E3AC3FC7B39D312 (competition_id), PRIMARY KEY(team_id, competition_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE palmares ADD CONSTRAINT FK_FF4EE6497B39D312 FOREIGN KEY (competition_id) REFERENCES competition (id)');
        $this->addSql('ALTER TABLE palmares ADD CONSTRAINT FK_FF4EE649296CD8AE FOREIGN KEY (team_id) REFERENCES team (id)');
        $this->addSql('ALTER TABLE player ADD CONSTRAINT FK_98197A65296CD8AE FOREIGN KEY (team_id) REFERENCES team (id)');
        $this->addSql('ALTER TABLE player ADD CONSTRAINT FK_98197A65F92F3E70 FOREIGN KEY (country_id) REFERENCES country (id)');
        $this->addSql('ALTER TABLE team ADD CONSTRAINT FK_C4E0A61FF92F3E70 FOREIGN KEY (country_id) REFERENCES country (id)');
        $this->addSql('ALTER TABLE team_competition ADD CONSTRAINT FK_5E3AC3FC296CD8AE FOREIGN KEY (team_id) REFERENCES team (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE team_competition ADD CONSTRAINT FK_5E3AC3FC7B39D312 FOREIGN KEY (competition_id) REFERENCES competition (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE palmares DROP FOREIGN KEY FK_FF4EE6497B39D312');
        $this->addSql('ALTER TABLE team_competition DROP FOREIGN KEY FK_5E3AC3FC7B39D312');
        $this->addSql('ALTER TABLE player DROP FOREIGN KEY FK_98197A65F92F3E70');
        $this->addSql('ALTER TABLE team DROP FOREIGN KEY FK_C4E0A61FF92F3E70');
        $this->addSql('ALTER TABLE palmares DROP FOREIGN KEY FK_FF4EE649296CD8AE');
        $this->addSql('ALTER TABLE player DROP FOREIGN KEY FK_98197A65296CD8AE');
        $this->addSql('ALTER TABLE team_competition DROP FOREIGN KEY FK_5E3AC3FC296CD8AE');
        $this->addSql('DROP TABLE competition');
        $this->addSql('DROP TABLE country');
        $this->addSql('DROP TABLE palmares');
        $this->addSql('DROP TABLE player');
        $this->addSql('DROP TABLE team');
        $this->addSql('DROP TABLE team_competition');
    }
}
