-- Twitter Table Create Script 
CREATE  TABLE IF NOT EXISTS `fohubcom_heat`.`${idKeyword}_twitter` (
  `idTwitter` BIGINT NOT NULL AUTO_INCREMENT ,
  `user_comment` TEXT NULL ,
  `posted_on` VARCHAR(128) NULL ,
  `source` TEXT NULL ,
  `object_id` VARCHAR(512) NULL ,
  `language_code` VARCHAR(5) NULL ,
  `positive_ratio` DOUBLE NULL ,
  `negative_ratio` DOUBLE NULL ,
  `fidTwitterUser` BIGINT NOT NULL ,
  PRIMARY KEY (`idTwitter`) ,
  INDEX `fk_${idKeyword}_twitter_twitter_users1` (`fidTwitterUser` ASC) ,
  CONSTRAINT `fk_${idKeyword}_twitter_twitter_users1`
    FOREIGN KEY (`fidTwitterUser` )
    REFERENCES `fohubcom_heat`.`twitter_users` (`idTwitterUser` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

-- Facebook Table create Script 
CREATE  TABLE IF NOT EXISTS `fohubcom_heat`.`${idKeyword}_facebook` (
  `idFacebook` BIGINT NOT NULL AUTO_INCREMENT ,
  `user_comment` TEXT NULL ,
  `posted_on` VARCHAR(128) NULL ,
  `likes` INT NULL ,
  `object_id` VARCHAR(512) NULL ,
  `positive_ratio` DOUBLE NULL ,
  `negative_ratio` DOUBLE NULL ,
  `fidfbUser` BIGINT NOT NULL ,
  PRIMARY KEY (`idFacebook`) ,
  INDEX `fk_${idKeyword}_facebook_facebook_users1` (`fidfbUser` ASC) ,
  CONSTRAINT `fk_${idKeyword}_facebook_facebook_users1`
    FOREIGN KEY (`fidfbUser` )
    REFERENCES `fohubcom_heat`.`facebook_users` (`idfbUser` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB