-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: test_world
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `creature_template`
--

DELETE FROM `creature_template` WHERE `entry` BETWEEN 750000 AND 9999999;

--
-- Dumping data for table `creature_template`
--

LOCK TABLES `creature_template` WRITE;
/*!40000 ALTER TABLE `creature_template` DISABLE KEYS */;
REPLACE INTO `creature_template` VALUES (800064,0,0,0,0,0,22911,0,0,0,'Dark','Abbild von Eximovement','',0,83,83,0,35,3,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,1,1,0,0,1,617299839,0,'dark2',0),(800065,0,0,0,0,0,12190,0,0,0,'Flammender Weihnachtswichtel','','',0,83,83,0,35,3,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,550,1,200,15000,1,0,0,1,617299839,0,'',0),(800066,0,0,0,0,0,12190,0,0,0,'Flammender Weihnachtswichtel','','',0,83,83,0,35,3,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,550,1,200,15000,1,0,0,1,617299839,0,'',0),(800067,0,0,0,0,0,21822,0,0,0,'Halloween','Vorbote des Grauens','',0,83,83,0,35,3,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,1,1,0,0,1,0,0,'',0),(800068,0,0,0,0,0,21822,0,0,0,'Der Halloweenschreck','Der schreckhafte Schrecken','',0,83,83,0,21,0,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,800068,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,150,1,50,60,1,0,0,1,0,0,'',0),(800069,0,0,0,0,0,21822,0,0,0,'Halloweeny','Das etwas andere Grauen','',0,83,83,0,35,3,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,1,1,0,0,1,0,0,'halloween',0),(800070,0,0,0,0,0,2641,0,0,0,'Thekrat','Vertreter des Wandervolkes','',0,80,80,0,35,3,1,1,0,3,0,3000,5000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300,300,300,300,300,300,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1,1,1,1,1,0,0,1,0,0,'wandervolk',0),(800034,0,0,0,0,0,25650,0,0,0,'Rumus Diener','Verpflichtet auf Lebzeit','',0,80,80,0,21,0,0,1.14286,1,0,0,3000,1000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',1,1,0,20,1,2,15,1,0,1,1,0,0,'',0),(800033,0,0,0,0,0,17858,0,0,0,'Falke von Grishna','','',0,70,70,0,21,0,0,1.14286,1,0,0,3000,1000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',1,1,0,10,1,2,15,1,0,1,1,0,0,'',0),(800032,0,0,0,0,0,15249,0,0,0,'Adals Spion','','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,262144,0,2,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800031,0,0,0,0,0,6060,0,0,0,'Devastor Saurutor','','',60003,80,80,0,35,3,2,2.14286,1,3,0,1000,2000,1,1,0,4104,0,0,0,0,0,0,7,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,8000000,9000000,'SmartAI',1,1,1,20,1,1,20,1,0,0,1,2147483647,0,'',0),(800030,0,0,0,0,0,28875,0,0,0,'Die gequaelte Seele','Pihaar','',0,83,83,0,21,0,2,2.14286,0.1,3,0,5000,4000,1,1,0,4104,0,0,0,0,0,0,7,0,0,800030,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,8000000,9000000,'SmartAI',1,1,1,1300,1,100,170,1,0,0,1,617299839,0,'',0),(800029,0,0,0,0,0,2255,0,0,0,'Marlerian Vanduin','Der Gelehrte','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800028,0,0,0,0,0,16694,0,0,0,'Moon','Unermuedlicher Sammler','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800027,0,0,0,0,0,2198,0,0,0,'Eowyn','','',0,80,80,0,35,4225,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800026,0,0,0,0,0,7389,0,0,0,'Rumu','Der Weisse','',60005,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800024,0,0,0,0,0,18137,0,0,0,'Silvari Tularia','','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800023,0,0,0,0,0,2256,0,0,0,'Bryan Atkenur','','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800022,0,0,0,0,0,20512,0,0,0,'Therakin Irael','Der oberste Kriegsfuerst','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800021,0,0,0,0,0,17372,0,0,0,'Kalius','Der Waechter','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800019,0,0,0,0,0,25650,0,0,0,'PVP Vendor','Verkaeufer von guten Dingen','',0,80,80,0,35,128,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800018,0,0,0,0,0,21304,0,0,0,'Yasio','von Humpty Dumpty','',0,80,80,0,35,2,0,1.14286,1.5,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800017,0,0,0,0,0,7103,0,0,0,'Punchii','Der unermuedliche Helfer','',800017,80,80,0,35,8519680,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800016,0,0,0,0,0,20512,0,0,0,'Therakin Irael','','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800015,0,0,0,0,0,17372,0,0,0,'Exitare','Der Waechter','',0,83,83,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',1,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800014,0,0,0,0,0,17894,0,0,0,'Kayoula Tariande','Die alte Bekannte','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800013,0,0,0,0,0,28160,0,0,0,'Kadarius Silberleiter','Der ueberfuellte','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800011,0,0,0,0,0,17822,0,0,0,'MMOwning  Schluesselmeister','Exitares NPC','',0,80,80,0,35,128,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800009,0,0,0,0,0,28264,0,0,0,'Lok┤Regual','','',0,80,80,0,35,83,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,7,2,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',1,3,1,1,1,1,1,1,0,800009,1,0,0,'',0),(800008,0,0,0,0,0,22256,0,0,0,'Hedwig','Der Adler','',0,80,80,0,35,2,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800007,0,0,0,0,0,1701,0,0,0,'Monderius Varus','Der Unscheinbare','',800007,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800006,0,0,0,0,0,5769,0,0,0,'Torvan von Doom','Der Unerreichbare','',0,80,80,0,35,2,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800005,0,0,0,0,0,19177,0,0,0,'Sophie Mondhain','Die Gerechte','',0,80,80,0,35,2,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800004,0,0,0,0,0,26790,0,0,0,'Destro MMOwning','Der Erwaehlte','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800003,0,0,0,0,0,29866,0,0,0,'Pi von Haar','Der Sanfmuetige','',0,80,80,0,35,2,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,7,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,0,0,1,0,0,'',0),(800002,0,0,0,0,0,3597,0,0,0,'Johann Orrig','Der Zwerg','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,0,0,1,0,0,'',0),(800001,0,0,0,0,0,28159,0,0,0,'Extator Magista','Der Erleuchtete','',0,80,80,0,35,2,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(800000,0,0,0,0,0,89,0,0,0,'Thedriun Wyrmbraeu','Der Reisende','',0,80,80,0,35,2,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,0,0,1,0,0,'',0),(799999,0,0,0,0,0,5567,0,0,0,'Gerhard X','','',50001,80,80,0,35,130,0,1.14286,10,3,1,1,1,1,1,0,2,0,0,0,0,0,0,0,7,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,1,1,1,1,0,1,0,0,'',0),(60002,0,0,0,0,0,25650,0,0,0,'Rumus Diener','Verpflichtet auf Lebzeit','',60002,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'SmartAI',1,1,0,1,1,1,1,1,0,0,1,0,0,'SmartAI',0),(60003,0,0,0,0,0,17072,0,0,0,'MMOwning Event','','',60003,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'eventnpc',0),(800035,0,0,0,0,0,21601,0,0,0,'Arcturus','Herrscher der Kaelte','',800035,83,83,0,21,0,1,1.14286,1,3,0,5000,2000,1,1,0,0,0,1,0,0,0,0,0,0,0,800035,0,800035,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,1000,1,80,100,1,0,0,1,642465663,0,'',0),(800036,0,0,0,0,0,27394,0,0,0,'Nerubischer Kommandant','Diener eines Herrschers','',0,83,83,0,21,0,2,2.14286,1,3,0,5000,4000,1,1,0,0,0,0,0,0,0,0,7,0,0,800036,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,8000000,9000000,'SmartAI',1,1,1,1000,1,10,40,1,0,0,1,617299839,0,'',0),(800037,0,0,0,0,0,17894,0,0,0,'Kayoula','Exitares verschollene Frau','',800037,83,83,0,21,0,0,1.14286,1,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800037,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,5500,1,200,160,1,0,0,1,617299839,0,'',0),(800038,0,0,0,0,0,20512,0,0,0,'Therakins Schatten','','',800038,83,83,0,21,0,0,1.14286,1,3,0,5000,2000,1,1,2,0,0,0,0,0,0,0,0,0,0,800038,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,3800,1,20,120,1,0,0,1,617299839,0,'',0),(800039,0,0,0,0,0,16694,0,0,0,'Moon','Die abtruennige Sammlerin','',800039,83,83,0,21,0,0,1.14286,1,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800039,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,3500,1,70,110,1,0,0,1,617299839,0,'',0),(800040,0,0,0,0,0,24942,0,0,0,'Marltyriun','Der Zerstoerer','',0,80,80,0,21,0,0,1.14286,2,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800040,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,5000000,9000000,'SmartAI',1,1,0,700,1,70,110,1,0,0,1,617299839,0,'',0),(800041,0,0,0,0,0,21322,0,0,0,'Lord of Doom','Ein unbekannter Herrscher','',800041,83,83,0,21,0,0,1.14286,0.5,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800041,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,500,1,50,50,1,0,0,1,617299839,0,'',0),(800042,0,0,0,0,0,17072,0,0,0,'MMOwning Ausstatter Rumu','219er','',0,80,80,0,35,131,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800043,0,0,0,0,0,17072,0,0,0,'MMOwning Ausstatter','T8','',0,80,80,0,35,131,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800044,0,0,0,0,0,17072,0,0,0,'MMOwning First Ausstattung','Made by Exitare','',0,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'npc_first_char',0),(800045,0,0,0,0,0,29492,0,0,0,'Galadriel','Herrscherin des Waldes','',800045,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800045,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'',1,1,0,20000,1,450,150,1,0,0,1,617299839,0,'boss_two',0),(800046,0,0,0,0,0,17072,0,0,0,'MMOWning Ausstatter Exitare','219er','',0,80,80,0,35,131,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800047,0,0,0,0,0,26790,0,0,0,'MMOwning Faction`n`Race','Made by Exitare','',0,83,83,0,35,3,0,1.14286,1,0,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,617299839,0,'racechange',0),(800048,0,0,0,0,0,29492,0,0,0,'Allianzchampion','','',800048,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800048,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,20000,1,450,150,1,0,0,1,617299839,0,'allianceboss',0),(800049,0,0,0,0,0,29492,0,0,0,'Hordechampion','','',800049,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,0,0,0,0,0,0,0,0,0,0,0,800049,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'SmartAI',1,1,0,20000,1,450,150,1,0,0,1,617299839,0,'hordeboss',0),(800050,0,0,0,0,0,29492,0,0,0,'Tyranium','Der gefluegelte Schrecken','',0,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,2,0,0,0,0,0,0,0,0,0,0,800050,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'',1,1,0,500,1400,200,100,1,0,0,1,617299839,0,'tyranium',0),(800051,0,0,0,0,0,25811,0,0,0,'MMOwning Vendor','Questitems','',0,80,80,0,35,131,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800052,0,0,0,0,0,21975,0,0,0,'Orca','','',800052,80,80,0,35,3,0,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800053,0,0,0,0,0,27211,0,0,0,'Kraserius','Stellvertreter der Sammler','',0,80,80,0,35,3,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800054,0,0,0,0,0,25610,0,0,0,'Groot','Prinz der Sammler','',0,80,80,0,35,3,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800055,0,0,0,0,0,16662,0,0,0,'Lucion','Hochlord der Sammler','',0,80,80,0,35,3,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800056,0,0,0,0,0,27782,0,0,0,'Alanna','Prinzessin der Sammler','',0,80,80,0,35,3,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'',0),(800057,0,0,0,0,0,27782,0,0,0,'SupportNPC','Made by Exitare','',0,80,80,0,35,3,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'supportnpc',0),(800058,0,0,0,0,0,9391,0,0,0,'Tolreos','Ein vergessener Schrecken','',0,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,2,0,0,1,0,0,0,0,0,0,0,800058,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'',1,1,0,550,1,200,110,1,0,0,1,642465663,0,'tolreos',0),(800059,0,0,0,0,0,27782,0,0,0,'MMOwning Challenge','Made by Exitare','',0,80,80,0,35,3,1,1.14286,1,1,1,1,1,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,1,1,1,1,1,0,0,1,0,0,'challenge',0),(800060,0,0,0,0,0,22911,0,0,0,'Darkshadow','Der Enterbte Prinz','',0,80,80,0,35,3,1,1.14286,1,1,1,5000,2000,1,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,0,0,'',0,1,0,550,1,200,15000,1,0,0,1,0,0,'dark',0),(800061,0,0,0,0,0,22911,0,0,0,'Lightshadow','Der unrechtmaessige Prinz','',0,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,2,0,0,1,0,0,0,0,0,0,0,800061,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'',1,1,0,550,1,200,110,1,0,0,1,617299839,0,'light',0),(800062,0,0,0,0,0,22911,0,0,0,'Darkshadow','Der Enterbte Prinz','',0,83,83,0,120,0,1,1.14286,2,3,0,5000,2000,1,1,2,0,0,1,0,0,0,0,0,0,0,800062,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'AggressorAI',1,1,0,5550,1,200,110,1,0,0,1,617299839,32768,'',0),(800063,0,0,0,0,0,22911,0,0,0,'Lightshadow','Der unrechtmaessige Prinz','',0,83,83,0,21,0,1,1.14286,2,3,0,5000,2000,1,1,2,0,0,1,0,0,0,0,0,0,0,800063,0,0,100,100,100,100,100,100,0,0,0,0,0,0,0,0,0,0,3000000,9000000,'',1,1,0,1050,1,200,150,1,0,0,1,617299839,0,'lighthardmode',0);
/*!40000 ALTER TABLE `creature_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-23  2:02:31