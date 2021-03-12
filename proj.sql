/*
 Navicat Premium Data Transfer

 Source Server         : rogue.db.elephantsql.com_5432
 Source Server Type    : PostgreSQL
 Source Server Version : 110005
 Source Host           : rogue.db.elephantsql.com:5432
 Source Catalog        : oegwoqir
 Source Schema         : proj

 Target Server Type    : PostgreSQL
 Target Server Version : 110005
 File Encoding         : 65001

 Date: 05/02/2021 23:55:51
*/


-- ----------------------------
-- Table structure for bron_biala
-- ----------------------------
DROP TABLE IF EXISTS "proj"."bron_biala";
CREATE TABLE "proj"."bron_biala" (
  "id_biala" int4 NOT NULL,
  "nazwa_broni" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "obrazenia" int4 NOT NULL,
  "rodzaj" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of bron_biala
-- ----------------------------
INSERT INTO "proj"."bron_biala" VALUES (1, 'bron jednoreczna', 8, 'zwykla');
INSERT INTO "proj"."bron_biala" VALUES (2, 'bron dwureczna', 10, 'dwureczna');
INSERT INTO "proj"."bron_biala" VALUES (3, 'bron improwizowana', 6, 'jednoreczna');
INSERT INTO "proj"."bron_biala" VALUES (4, 'szpada', 8, 'jednoreczna');
INSERT INTO "proj"."bron_biala" VALUES (5, 'halabarda', 11, 'dwureczna');
INSERT INTO "proj"."bron_biala" VALUES (6, 'korbacz', 13, 'dwureczna');
INSERT INTO "proj"."bron_biala" VALUES (7, 'kostur', 6, 'dwureczna');
INSERT INTO "proj"."bron_biala" VALUES (8, 'włócznia', 9, 'dwureczna');
INSERT INTO "proj"."bron_biala" VALUES (9, 'Tarcza', 6, 'zwykla');

-- ----------------------------
-- Table structure for bron_cecha
-- ----------------------------
DROP TABLE IF EXISTS "proj"."bron_cecha";
CREATE TABLE "proj"."bron_cecha" (
  "bron" int4 NOT NULL,
  "cecha" int4 NOT NULL
)
;

-- ----------------------------
-- Records of bron_cecha
-- ----------------------------
INSERT INTO "proj"."bron_cecha" VALUES (2, 2);
INSERT INTO "proj"."bron_cecha" VALUES (2, 3);
INSERT INTO "proj"."bron_cecha" VALUES (4, 6);
INSERT INTO "proj"."bron_cecha" VALUES (4, 7);
INSERT INTO "proj"."bron_cecha" VALUES (5, 3);
INSERT INTO "proj"."bron_cecha" VALUES (5, 1);
INSERT INTO "proj"."bron_cecha" VALUES (5, 6);
INSERT INTO "proj"."bron_cecha" VALUES (6, 6);
INSERT INTO "proj"."bron_cecha" VALUES (6, 1);
INSERT INTO "proj"."bron_cecha" VALUES (6, 5);
INSERT INTO "proj"."bron_cecha" VALUES (7, 5);
INSERT INTO "proj"."bron_cecha" VALUES (8, 1);
INSERT INTO "proj"."bron_cecha" VALUES (8, 7);
INSERT INTO "proj"."bron_cecha" VALUES (9, 5);
INSERT INTO "proj"."bron_cecha" VALUES (9, 4);

-- ----------------------------
-- Table structure for bron_dyst_cecha
-- ----------------------------
DROP TABLE IF EXISTS "proj"."bron_dyst_cecha";
CREATE TABLE "proj"."bron_dyst_cecha" (
  "bron" int4 NOT NULL,
  "cecha" int4 NOT NULL
)
;

-- ----------------------------
-- Records of bron_dyst_cecha
-- ----------------------------
INSERT INTO "proj"."bron_dyst_cecha" VALUES (2, 3);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (3, 7);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (3, 1);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (3, 10);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (5, 5);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (5, 1);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (6, 5);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (6, 10);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (7, 1);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (7, 9);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (7, 3);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (8, 7);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (9, 3);
INSERT INTO "proj"."bron_dyst_cecha" VALUES (9, 7);

-- ----------------------------
-- Table structure for bron_dystansowa
-- ----------------------------
DROP TABLE IF EXISTS "proj"."bron_dystansowa";
CREATE TABLE "proj"."bron_dystansowa" (
  "id_dyst" int4 NOT NULL,
  "nazwa_broni" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "obrazenia" int4 NOT NULL,
  "rodzaj" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "zasieg" int4 NOT NULL,
  "amunicja" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of bron_dystansowa
-- ----------------------------
INSERT INTO "proj"."bron_dystansowa" VALUES (1, 'łuk', 8, 'zwykla', 50, 'strzały');
INSERT INTO "proj"."bron_dystansowa" VALUES (2, 'kusza', 14, 'zwykla', 30, 'bełty');
INSERT INTO "proj"."bron_dystansowa" VALUES (3, 'Elfi łuk', 10, 'elfia', 70, 'strzały');
INSERT INTO "proj"."bron_dystansowa" VALUES (4, 'improwizowana', 6, 'zwykla', 30, 'brak');
INSERT INTO "proj"."bron_dystansowa" VALUES (5, 'bolas', 6, 'miotana', 50, 'brak');
INSERT INTO "proj"."bron_dystansowa" VALUES (6, 'proca', 10, 'proca', 40, 'kamienie');
INSERT INTO "proj"."bron_dystansowa" VALUES (7, 'garłacz', 12, 'palna', 20, 'proch');
INSERT INTO "proj"."bron_dystansowa" VALUES (8, 'pistolet', 10, 'palna', 40, 'kule');
INSERT INTO "proj"."bron_dystansowa" VALUES (9, 'muszkiet', 8, 'palna', 90, 'proch');

-- ----------------------------
-- Table structure for cechy_specjalne
-- ----------------------------
DROP TABLE IF EXISTS "proj"."cechy_specjalne";
CREATE TABLE "proj"."cechy_specjalne" (
  "id_cecha" int4 NOT NULL,
  "nazwa_cechy" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cechy_specjalne
-- ----------------------------
INSERT INTO "proj"."cechy_specjalne" VALUES (1, 'druzgocąca');
INSERT INTO "proj"."cechy_specjalne" VALUES (2, 'powolny');
INSERT INTO "proj"."cechy_specjalne" VALUES (3, 'ciężki');
INSERT INTO "proj"."cechy_specjalne" VALUES (4, 'parujący');
INSERT INTO "proj"."cechy_specjalne" VALUES (5, 'ogłuszający');
INSERT INTO "proj"."cechy_specjalne" VALUES (6, 'wyważony');
INSERT INTO "proj"."cechy_specjalne" VALUES (7, 'przebijający');
INSERT INTO "proj"."cechy_specjalne" VALUES (8, 'zawodny');
INSERT INTO "proj"."cechy_specjalne" VALUES (9, 'odłamkowy');
INSERT INTO "proj"."cechy_specjalne" VALUES (10, 'specjalny');

-- ----------------------------
-- Table structure for ekwipunek
-- ----------------------------
DROP TABLE IF EXISTS "proj"."ekwipunek";
CREATE TABLE "proj"."ekwipunek" (
  "id_ekw" int4 NOT NULL,
  "nazwa_ekw" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of ekwipunek
-- ----------------------------
INSERT INTO "proj"."ekwipunek" VALUES (1, 'lina z hakiem');
INSERT INTO "proj"."ekwipunek" VALUES (2, 'wino');
INSERT INTO "proj"."ekwipunek" VALUES (3, 'pochodnia');
INSERT INTO "proj"."ekwipunek" VALUES (5, 'symbol religijny');
INSERT INTO "proj"."ekwipunek" VALUES (6, 'kilof');
INSERT INTO "proj"."ekwipunek" VALUES (7, 'łancuch');
INSERT INTO "proj"."ekwipunek" VALUES (8, 'łom');
INSERT INTO "proj"."ekwipunek" VALUES (9, 'łopata');
INSERT INTO "proj"."ekwipunek" VALUES (10, 'nóż');
INSERT INTO "proj"."ekwipunek" VALUES (4, 'kosci');

-- ----------------------------
-- Table structure for klasa_postaci
-- ----------------------------
DROP TABLE IF EXISTS "proj"."klasa_postaci";
CREATE TABLE "proj"."klasa_postaci" (
  "id_klasa" int4 NOT NULL,
  "nazwa_klasy" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of klasa_postaci
-- ----------------------------
INSERT INTO "proj"."klasa_postaci" VALUES (1, 'Wojownik');
INSERT INTO "proj"."klasa_postaci" VALUES (2, 'Tank');
INSERT INTO "proj"."klasa_postaci" VALUES (3, 'Zabójca');
INSERT INTO "proj"."klasa_postaci" VALUES (4, 'Łotrzyk');
INSERT INTO "proj"."klasa_postaci" VALUES (5, 'Łowca');
INSERT INTO "proj"."klasa_postaci" VALUES (6, 'Mag');
INSERT INTO "proj"."klasa_postaci" VALUES (7, 'Szaman');
INSERT INTO "proj"."klasa_postaci" VALUES (8, 'Paladyn');
INSERT INTO "proj"."klasa_postaci" VALUES (9, 'Złodziej');
INSERT INTO "proj"."klasa_postaci" VALUES (10, 'Dyplomata');

-- ----------------------------
-- Table structure for mag_klasa
-- ----------------------------
DROP TABLE IF EXISTS "proj"."mag_klasa";
CREATE TABLE "proj"."mag_klasa" (
  "id_klasa" int4 NOT NULL,
  "id_magia" int4 NOT NULL
)
;

-- ----------------------------
-- Records of mag_klasa
-- ----------------------------
INSERT INTO "proj"."mag_klasa" VALUES (6, 1);
INSERT INTO "proj"."mag_klasa" VALUES (6, 2);
INSERT INTO "proj"."mag_klasa" VALUES (6, 3);
INSERT INTO "proj"."mag_klasa" VALUES (6, 5);
INSERT INTO "proj"."mag_klasa" VALUES (7, 1);
INSERT INTO "proj"."mag_klasa" VALUES (7, 3);
INSERT INTO "proj"."mag_klasa" VALUES (7, 4);
INSERT INTO "proj"."mag_klasa" VALUES (8, 1);
INSERT INTO "proj"."mag_klasa" VALUES (8, 2);

-- ----------------------------
-- Table structure for pancerz
-- ----------------------------
DROP TABLE IF EXISTS "proj"."pancerz";
CREATE TABLE "proj"."pancerz" (
  "id_panc" int4 NOT NULL,
  "nazwa_pancerza" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ochrona" int4
)
;

-- ----------------------------
-- Records of pancerz
-- ----------------------------
INSERT INTO "proj"."pancerz" VALUES (1, 'ubranie', 1);
INSERT INTO "proj"."pancerz" VALUES (2, 'szaty', 3);
INSERT INTO "proj"."pancerz" VALUES (3, 'lekka zbroja', 5);
INSERT INTO "proj"."pancerz" VALUES (4, 'średnia zbroja', 9);
INSERT INTO "proj"."pancerz" VALUES (5, 'zbroja kolcza', 11);
INSERT INTO "proj"."pancerz" VALUES (6, 'zbroja skórzana', 4);
INSERT INTO "proj"."pancerz" VALUES (7, 'zbroja płytowa', 14);

-- ----------------------------
-- Table structure for postacie_graczy
-- ----------------------------
DROP TABLE IF EXISTS "proj"."postacie_graczy";
CREATE TABLE "proj"."postacie_graczy" (
  "id_postac" int4 NOT NULL,
  "imie" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "nazwisko" varchar(255) COLLATE "pg_catalog"."default",
  "wiek" int4 NOT NULL,
  "id_klasa" int4 NOT NULL,
  "id_prof" int4 NOT NULL,
  "id_rasa" int4 NOT NULL,
  "id_region" int4 NOT NULL
)
;

-- ----------------------------
-- Records of postacie_graczy
-- ----------------------------
INSERT INTO "proj"."postacie_graczy" VALUES (1, 'Jan', 'Drwal', 23, 2, 2, 1, 1);
INSERT INTO "proj"."postacie_graczy" VALUES (2, 'Jan', 'Drwal', 23, 2, 1, 1, 1);
INSERT INTO "proj"."postacie_graczy" VALUES (3, 'Jan', 'Drwal', 23, 2, 1, 1, 1);
INSERT INTO "proj"."postacie_graczy" VALUES (4, 'Jan', 'Drwal', 23, 2, 1, 1, 1);
INSERT INTO "proj"."postacie_graczy" VALUES (5, 'jan', 'dr', 23, 2, 2, 1, 1);
INSERT INTO "proj"."postacie_graczy" VALUES (6, 'TRAk', 'niszczyciel', 23, 1, 10, 2, 6);
INSERT INTO "proj"."postacie_graczy" VALUES (7, 'jan', 'drwal', 56, 2, 3, 6, 9);

-- ----------------------------
-- Table structure for prof_bron
-- ----------------------------
DROP TABLE IF EXISTS "proj"."prof_bron";
CREATE TABLE "proj"."prof_bron" (
  "id_prof" int4 NOT NULL,
  "id_bron_biala" int4 NOT NULL
)
;

-- ----------------------------
-- Records of prof_bron
-- ----------------------------
INSERT INTO "proj"."prof_bron" VALUES (1, 7);
INSERT INTO "proj"."prof_bron" VALUES (2, 1);
INSERT INTO "proj"."prof_bron" VALUES (2, 9);
INSERT INTO "proj"."prof_bron" VALUES (3, 3);
INSERT INTO "proj"."prof_bron" VALUES (4, 1);
INSERT INTO "proj"."prof_bron" VALUES (5, 8);
INSERT INTO "proj"."prof_bron" VALUES (6, 2);
INSERT INTO "proj"."prof_bron" VALUES (8, 5);
INSERT INTO "proj"."prof_bron" VALUES (8, 9);
INSERT INTO "proj"."prof_bron" VALUES (9, 6);
INSERT INTO "proj"."prof_bron" VALUES (10, 8);
INSERT INTO "proj"."prof_bron" VALUES (11, 3);
INSERT INTO "proj"."prof_bron" VALUES (13, 1);
INSERT INTO "proj"."prof_bron" VALUES (8, 4);
INSERT INTO "proj"."prof_bron" VALUES (12, 1);
INSERT INTO "proj"."prof_bron" VALUES (7, 1);

-- ----------------------------
-- Table structure for prof_dyst
-- ----------------------------
DROP TABLE IF EXISTS "proj"."prof_dyst";
CREATE TABLE "proj"."prof_dyst" (
  "id_prof2" int4 NOT NULL,
  "id_dyst" int4 NOT NULL
)
;

-- ----------------------------
-- Records of prof_dyst
-- ----------------------------
INSERT INTO "proj"."prof_dyst" VALUES (1, 4);
INSERT INTO "proj"."prof_dyst" VALUES (1, 1);
INSERT INTO "proj"."prof_dyst" VALUES (2, 1);
INSERT INTO "proj"."prof_dyst" VALUES (3, 4);
INSERT INTO "proj"."prof_dyst" VALUES (4, 6);
INSERT INTO "proj"."prof_dyst" VALUES (4, 5);
INSERT INTO "proj"."prof_dyst" VALUES (5, 3);
INSERT INTO "proj"."prof_dyst" VALUES (6, 2);
INSERT INTO "proj"."prof_dyst" VALUES (8, 9);
INSERT INTO "proj"."prof_dyst" VALUES (9, 4);
INSERT INTO "proj"."prof_dyst" VALUES (7, 1);
INSERT INTO "proj"."prof_dyst" VALUES (10, 8);
INSERT INTO "proj"."prof_dyst" VALUES (11, 4);
INSERT INTO "proj"."prof_dyst" VALUES (12, 7);
INSERT INTO "proj"."prof_dyst" VALUES (12, 5);
INSERT INTO "proj"."prof_dyst" VALUES (13, 7);

-- ----------------------------
-- Table structure for prof_ekw
-- ----------------------------
DROP TABLE IF EXISTS "proj"."prof_ekw";
CREATE TABLE "proj"."prof_ekw" (
  "id_prof4" int4 NOT NULL,
  "id_ekw" int4 NOT NULL
)
;

-- ----------------------------
-- Records of prof_ekw
-- ----------------------------
INSERT INTO "proj"."prof_ekw" VALUES (1, 5);
INSERT INTO "proj"."prof_ekw" VALUES (2, 3);
INSERT INTO "proj"."prof_ekw" VALUES (2, 7);
INSERT INTO "proj"."prof_ekw" VALUES (3, 9);
INSERT INTO "proj"."prof_ekw" VALUES (4, 10);
INSERT INTO "proj"."prof_ekw" VALUES (4, 7);
INSERT INTO "proj"."prof_ekw" VALUES (5, 3);
INSERT INTO "proj"."prof_ekw" VALUES (6, 1);
INSERT INTO "proj"."prof_ekw" VALUES (7, 1);
INSERT INTO "proj"."prof_ekw" VALUES (8, 3);
INSERT INTO "proj"."prof_ekw" VALUES (8, 8);
INSERT INTO "proj"."prof_ekw" VALUES (9, 2);
INSERT INTO "proj"."prof_ekw" VALUES (9, 3);
INSERT INTO "proj"."prof_ekw" VALUES (10, 4);
INSERT INTO "proj"."prof_ekw" VALUES (10, 7);
INSERT INTO "proj"."prof_ekw" VALUES (11, 6);
INSERT INTO "proj"."prof_ekw" VALUES (12, 4);
INSERT INTO "proj"."prof_ekw" VALUES (12, 8);
INSERT INTO "proj"."prof_ekw" VALUES (13, 2);
INSERT INTO "proj"."prof_ekw" VALUES (13, 8);

-- ----------------------------
-- Table structure for prof_panc
-- ----------------------------
DROP TABLE IF EXISTS "proj"."prof_panc";
CREATE TABLE "proj"."prof_panc" (
  "id_prof3" int4 NOT NULL,
  "id_panc" int4 NOT NULL
)
;

-- ----------------------------
-- Records of prof_panc
-- ----------------------------
INSERT INTO "proj"."prof_panc" VALUES (1, 2);
INSERT INTO "proj"."prof_panc" VALUES (2, 3);
INSERT INTO "proj"."prof_panc" VALUES (3, 1);
INSERT INTO "proj"."prof_panc" VALUES (4, 3);
INSERT INTO "proj"."prof_panc" VALUES (5, 6);
INSERT INTO "proj"."prof_panc" VALUES (6, 7);
INSERT INTO "proj"."prof_panc" VALUES (8, 5);
INSERT INTO "proj"."prof_panc" VALUES (9, 4);
INSERT INTO "proj"."prof_panc" VALUES (10, 4);
INSERT INTO "proj"."prof_panc" VALUES (11, 1);
INSERT INTO "proj"."prof_panc" VALUES (12, 5);
INSERT INTO "proj"."prof_panc" VALUES (13, 3);
INSERT INTO "proj"."prof_panc" VALUES (7, 3);

-- ----------------------------
-- Table structure for profesje
-- ----------------------------
DROP TABLE IF EXISTS "proj"."profesje";
CREATE TABLE "proj"."profesje" (
  "id_profesji" int4 NOT NULL,
  "nazwa" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of profesje
-- ----------------------------
INSERT INTO "proj"."profesje" VALUES (1, 'akolita');
INSERT INTO "proj"."profesje" VALUES (2, 'giermek');
INSERT INTO "proj"."profesje" VALUES (3, 'grabarz');
INSERT INTO "proj"."profesje" VALUES (4, 'straznik pól');
INSERT INTO "proj"."profesje" VALUES (5, 'wojownik klanowy');
INSERT INTO "proj"."profesje" VALUES (6, 'tarczownik');
INSERT INTO "proj"."profesje" VALUES (8, 'straznik miejski');
INSERT INTO "proj"."profesje" VALUES (9, 'podżegacz');
INSERT INTO "proj"."profesje" VALUES (10, 'najemnik');
INSERT INTO "proj"."profesje" VALUES (11, 'górnik');
INSERT INTO "proj"."profesje" VALUES (13, 'żeglarz');
INSERT INTO "proj"."profesje" VALUES (12, 'przemytnik');
INSERT INTO "proj"."profesje" VALUES (7, 'bandyta');

-- ----------------------------
-- Table structure for przeszlosc
-- ----------------------------
DROP TABLE IF EXISTS "proj"."przeszlosc";
CREATE TABLE "proj"."przeszlosc" (
  "id_rasa" int4 NOT NULL,
  "id_region" int4 NOT NULL
)
;

-- ----------------------------
-- Records of przeszlosc
-- ----------------------------
INSERT INTO "proj"."przeszlosc" VALUES (1, 1);
INSERT INTO "proj"."przeszlosc" VALUES (1, 2);
INSERT INTO "proj"."przeszlosc" VALUES (1, 3);
INSERT INTO "proj"."przeszlosc" VALUES (1, 4);
INSERT INTO "proj"."przeszlosc" VALUES (1, 5);
INSERT INTO "proj"."przeszlosc" VALUES (2, 1);
INSERT INTO "proj"."przeszlosc" VALUES (2, 6);
INSERT INTO "proj"."przeszlosc" VALUES (3, 1);
INSERT INTO "proj"."przeszlosc" VALUES (3, 8);
INSERT INTO "proj"."przeszlosc" VALUES (4, 9);
INSERT INTO "proj"."przeszlosc" VALUES (4, 10);
INSERT INTO "proj"."przeszlosc" VALUES (5, 1);
INSERT INTO "proj"."przeszlosc" VALUES (5, 7);
INSERT INTO "proj"."przeszlosc" VALUES (6, 11);
INSERT INTO "proj"."przeszlosc" VALUES (6, 1);
INSERT INTO "proj"."przeszlosc" VALUES (6, 9);

-- ----------------------------
-- Table structure for rasa_postaci
-- ----------------------------
DROP TABLE IF EXISTS "proj"."rasa_postaci";
CREATE TABLE "proj"."rasa_postaci" (
  "id_rasy" int4 NOT NULL,
  "nazwa_rasy" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "odpornosc_na_magie" bool NOT NULL
)
;

-- ----------------------------
-- Records of rasa_postaci
-- ----------------------------
INSERT INTO "proj"."rasa_postaci" VALUES (1, 'czlowiek', 'f');
INSERT INTO "proj"."rasa_postaci" VALUES (2, 'krasnolud', 't');
INSERT INTO "proj"."rasa_postaci" VALUES (3, 'elf leśny', 'f');
INSERT INTO "proj"."rasa_postaci" VALUES (4, 'elf wysoki', 'f');
INSERT INTO "proj"."rasa_postaci" VALUES (5, 'niziołek', 't');
INSERT INTO "proj"."rasa_postaci" VALUES (6, 'nieumarły', 'f');

-- ----------------------------
-- Table structure for region_pochodzenia
-- ----------------------------
DROP TABLE IF EXISTS "proj"."region_pochodzenia";
CREATE TABLE "proj"."region_pochodzenia" (
  "id_poch" int4 NOT NULL,
  "region" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of region_pochodzenia
-- ----------------------------
INSERT INTO "proj"."region_pochodzenia" VALUES (1, 'Imperium');
INSERT INTO "proj"."region_pochodzenia" VALUES (3, 'Kislev');
INSERT INTO "proj"."region_pochodzenia" VALUES (4, 'Norska');
INSERT INTO "proj"."region_pochodzenia" VALUES (5, 'Estalia');
INSERT INTO "proj"."region_pochodzenia" VALUES (6, 'Wschodnie_góry');
INSERT INTO "proj"."region_pochodzenia" VALUES (7, 'Kraina_Zgromadzenia');
INSERT INTO "proj"."region_pochodzenia" VALUES (8, 'Klan');
INSERT INTO "proj"."region_pochodzenia" VALUES (9, 'Ulthuan');
INSERT INTO "proj"."region_pochodzenia" VALUES (10, 'Albion');
INSERT INTO "proj"."region_pochodzenia" VALUES (11, 'Sylvania');
INSERT INTO "proj"."region_pochodzenia" VALUES (2, 'Bretonia');

-- ----------------------------
-- Table structure for rodzaje_magii
-- ----------------------------
DROP TABLE IF EXISTS "proj"."rodzaje_magii";
CREATE TABLE "proj"."rodzaje_magii" (
  "id_magia" int4 NOT NULL,
  "nazwa_kregu" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of rodzaje_magii
-- ----------------------------
INSERT INTO "proj"."rodzaje_magii" VALUES (1, 'magia prosta');
INSERT INTO "proj"."rodzaje_magii" VALUES (2, 'magia bitewna');
INSERT INTO "proj"."rodzaje_magii" VALUES (3, 'magia kapłańska');
INSERT INTO "proj"."rodzaje_magii" VALUES (4, 'magia starożytna');
INSERT INTO "proj"."rodzaje_magii" VALUES (5, 'magia zaawansowana');

-- ----------------------------
-- Table structure for stat_klas
-- ----------------------------
DROP TABLE IF EXISTS "proj"."stat_klas";
CREATE TABLE "proj"."stat_klas" (
  "id_stat" int4 NOT NULL,
  "walka_wrecz" int4,
  "walka_dyst" int4,
  "sila" int4,
  "wytrzymalosc" int4,
  "zrecznosc" int4,
  "inteligencja" int4,
  "percepcja" int4,
  "sila_woli" int4,
  "oglada" int4,
  "wplyw" int4,
  "zycie" int4,
  "szczescie" int4
)
;

-- ----------------------------
-- Records of stat_klas
-- ----------------------------
INSERT INTO "proj"."stat_klas" VALUES (2, 10, 0, 10, 20, 0, 0, 0, 10, 0, 5, 5, 0);
INSERT INTO "proj"."stat_klas" VALUES (3, 10, 15, 0, 0, 20, 10, 0, 10, 0, 5, 0, 2);
INSERT INTO "proj"."stat_klas" VALUES (4, 5, 15, 0, 0, 20, 10, 15, 5, 10, 10, 0, 3);
INSERT INTO "proj"."stat_klas" VALUES (5, 5, 20, 0, 0, 20, 10, 15, 0, 10, 0, 2, 1);
INSERT INTO "proj"."stat_klas" VALUES (6, 10, 0, 0, 0, 10, 20, 10, 20, 10, 15, 2, 3);
INSERT INTO "proj"."stat_klas" VALUES (7, 5, 5, 0, 0, 10, 15, 10, 25, 10, 5, 3, 4);
INSERT INTO "proj"."stat_klas" VALUES (8, 15, 0, 10, 5, 0, 15, 0, 15, 15, 15, 4, 1);
INSERT INTO "proj"."stat_klas" VALUES (9, 10, 10, 0, 0, 20, 5, 20, 5, 15, 10, 1, 5);
INSERT INTO "proj"."stat_klas" VALUES (10, 10, 0, 5, 0, 0, 15, 20, 5, 15, 25, 2, 5);
INSERT INTO "proj"."stat_klas" VALUES (1, 15, 5, 5, 10, 0, 0, 0, 10, 0, 5, 2, 0);

-- ----------------------------
-- Table structure for stat_postaci
-- ----------------------------
DROP TABLE IF EXISTS "proj"."stat_postaci";
CREATE TABLE "proj"."stat_postaci" (
  "id_stat" int4 NOT NULL,
  "walka_wrecz" int4,
  "walka_dyst" int4,
  "sila" int4,
  "wytrzymalosc" int4,
  "zrecznosc" int4,
  "inteligencja" int4,
  "percepcja" int4,
  "sila_woli" int4,
  "oglada" int4,
  "wplyw" int4,
  "zycie" int4,
  "szczescie" int4
)
;

-- ----------------------------
-- Records of stat_postaci
-- ----------------------------
INSERT INTO "proj"."stat_postaci" VALUES (1, 30, 20, 30, 40, 20, 20, 20, 30, 20, 35, 15, 3);
INSERT INTO "proj"."stat_postaci" VALUES (2, 30, 20, 30, 40, 20, 20, 20, 30, 20, 35, 15, 3);
INSERT INTO "proj"."stat_postaci" VALUES (3, 30, 20, 30, 40, 20, 20, 20, 30, 20, 35, 15, 3);
INSERT INTO "proj"."stat_postaci" VALUES (4, 30, 20, 30, 40, 20, 20, 20, 30, 20, 35, 15, 3);
INSERT INTO "proj"."stat_postaci" VALUES (5, 30, 20, 30, 40, 20, 20, 20, 30, 20, 35, 15, 3);
INSERT INTO "proj"."stat_postaci" VALUES (6, 45, 25, 25, 40, 10, 20, 15, 30, 10, 25, 15, 2);
INSERT INTO "proj"."stat_postaci" VALUES (7, 30, 10, 40, 50, 10, 10, 20, 50, 10, 10, 20, 4);

-- ----------------------------
-- Table structure for staty_pocz
-- ----------------------------
DROP TABLE IF EXISTS "proj"."staty_pocz";
CREATE TABLE "proj"."staty_pocz" (
  "id_stat" int4 NOT NULL,
  "walka_wrecz" int4 NOT NULL,
  "walka_dyst" int4 NOT NULL,
  "sila" int4 NOT NULL,
  "wytrzymalosc" int4 NOT NULL,
  "zrecznosc" int4 NOT NULL,
  "inteligencja" int4 NOT NULL,
  "percepcja" int4 NOT NULL,
  "sila_woli" int4 NOT NULL,
  "oglada" int4 NOT NULL,
  "wplyw" int4 NOT NULL,
  "zycie" int4 NOT NULL,
  "szczescie" int4 NOT NULL
)
;

-- ----------------------------
-- Records of staty_pocz
-- ----------------------------
INSERT INTO "proj"."staty_pocz" VALUES (1, 20, 20, 20, 20, 20, 20, 20, 20, 20, 30, 10, 3);
INSERT INTO "proj"."staty_pocz" VALUES (2, 30, 20, 20, 30, 10, 20, 15, 20, 10, 20, 13, 2);
INSERT INTO "proj"."staty_pocz" VALUES (3, 20, 30, 20, 20, 20, 20, 20, 20, 20, 10, 9, 4);
INSERT INTO "proj"."staty_pocz" VALUES (4, 20, 20, 20, 20, 30, 20, 20, 20, 30, 5, 8, 6);
INSERT INTO "proj"."staty_pocz" VALUES (5, 10, 30, 10, 10, 30, 20, 20, 30, 30, 20, 6, 7);
INSERT INTO "proj"."staty_pocz" VALUES (6, 20, 10, 30, 30, 10, 10, 20, 40, 10, 5, 15, 4);

-- ----------------------------
-- Function structure for atrk
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."atrk"("col" varchar, "nazw" varchar);
CREATE OR REPLACE FUNCTION "proj"."atrk"("col" varchar, "nazw" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
	ret INTEGER;
BEGIN
	EXECUTE format('SELECT %I from proj.statyk sp WHERE sp.nazwa_klasy = $1',col)
	INTO ret
	USING "nazw";
	RETURN ret;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for atrp
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."atrp"("col" varchar, "nazw" varchar);
CREATE OR REPLACE FUNCTION "proj"."atrp"("col" varchar, "nazw" varchar)
  RETURNS "pg_catalog"."int4" AS $BODY$
DECLARE
	ret INTEGER;
BEGIN
	EXECUTE format('SELECT %I from proj.statyp sp WHERE sp.nazwa_rasy = $1',col)
	INTO ret
	USING "nazw";
	RETURN ret;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for bron_dyst_prof
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."bron_dyst_prof"("nazw" varchar);
CREATE OR REPLACE FUNCTION "proj"."bron_dyst_prof"("nazw" varchar)
  RETURNS TABLE("nazwa" varchar, "obrazenia" int4, "cecha" varchar, "zasięg" int4, "amunicja" varchar) AS $BODY$
BEGIN
	RETURN QUERY  
Select bd.nazwa_broni,bd.obrazenia,rodzaj,zasieg,bd.amunicja from proj.bron_dystansowa bd,proj.profesje,proj.prof_dyst
WHERE id_profesji=(Select id_profesji where profesje.nazwa = nazw) 
AND prof_dyst.id_dyst= bd.id_dyst AND id_profesji=id_prof2;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for bron_profesja
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."bron_profesja"("nazw" varchar);
CREATE OR REPLACE FUNCTION "proj"."bron_profesja"("nazw" varchar)
  RETURNS TABLE("nazwa" varchar, "obrazenia" int4, "cecha" varchar) AS $BODY$
BEGIN
	RETURN QUERY  
Select nazwa_broni, bron_biala.obrazenia,rodzaj from proj.bron_biala, proj.profesje,proj.prof_bron
WHERE id_profesji=(Select id_profesji where profesje.nazwa = nazw) 
AND id_bron_biala=id_biala AND id_profesji=id_prof;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for ekw_prof
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."ekw_prof"("nazw" varchar);
CREATE OR REPLACE FUNCTION "proj"."ekw_prof"("nazw" varchar)
  RETURNS TABLE("nazwa" varchar) AS $BODY$
BEGIN
	RETURN QUERY  
Select nazwa_ekw from proj.ekwipunek,proj.profesje,proj.prof_ekw
WHERE profesje.id_profesji=(Select profesje.id_profesji where profesje.nazwa = "nazw") 
AND ekwipunek.id_ekw=prof_ekw.id_ekw AND id_profesji=id_prof4;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for inser
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."inser"("imie" varchar, "nazw" varchar, "w" int4, "klasa" varchar, "prof" varchar, "rasa" varchar, "re" varchar);
CREATE OR REPLACE FUNCTION "proj"."inser"("imie" varchar, "nazw" varchar, "w" int4, "klasa" varchar, "prof" varchar, "rasa" varchar, "re" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$
DECLARE
	kl INTEGER;
	pr INTEGER;
	ras INTEGER;
	reg INTEGER;
	ident INTEGER;
BEGIN
	
IF (SELECT count(*) from proj.postacie_graczy) > 0 THEN
	ident := (SELECT MAX(id_postac) from proj.postacie_graczy) + 1;
ELSE
	ident := 1;
END IF;
INSert into proj.stat_postaci (id_stat) Values (ident);

kl=(SELECT id_klasa from proj.klasa_postaci WHERE nazwa_klasy = "klasa");
pr=(SELECT id_profesji from proj.profesje WHERE profesje.nazwa = "prof");
ras=(SELECT id_rasy from proj.rasa_postaci WHERE nazwa_rasy = "rasa");
reg=(SELECT id_poch from proj.region_pochodzenia WHERE region_pochodzenia.region = "re");

INSert into proj.postacie_graczy  Values (ident,"imie","nazw",w,kl,pr,ras,reg);


END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for panc_prof
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."panc_prof"("nazw" varchar);
CREATE OR REPLACE FUNCTION "proj"."panc_prof"("nazw" varchar)
  RETURNS TABLE("nazwa" varchar, "ochrona" int4) AS $BODY$
BEGIN
	RETURN QUERY  
 Select pancerz.nazwa_pancerza, pancerz.ochrona as Pancerz from proj.pancerz,proj.profesje,proj.prof_panc
WHERE id_profesji=(Select id_profesji where profesje.nazwa = "nazw") 
AND prof_panc.id_panc=pancerz.id_panc AND id_profesji=id_prof3;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for wstaw_stat
-- ----------------------------
DROP FUNCTION IF EXISTS "proj"."wstaw_stat"();
CREATE OR REPLACE FUNCTION "proj"."wstaw_stat"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
DECLARE
    ident INT;
		ras VARCHAR;
		kl VARCHAR;
BEGIN
		ident := (SELECT max(id_stat) from proj.stat_postaci);
		ras := (SELECT nazwa_rasy from proj.rasa_postaci where id_rasy = (SELECT id_rasa from proj.postacie_graczy where id_postac=ident));
		kl := (SELECT nazwa_klasy from proj.klasa_postaci where id_klasa = (SELECT id_klasa from proj.postacie_graczy where id_postac=ident));
		
		Update proj.stat_postaci SET
		walka_wrecz = (proj.atrk('walka_wrecz',kl) + proj.atrp('walka_wrecz',ras)),
		walka_dyst = (proj.atrk('walka_dyst',kl) + proj.atrp('walka_dyst',ras)),
		sila = (proj.atrk('sila',kl) + proj.atrp('sila',ras)),
		wytrzymalosc = (proj.atrk('wytrzymalosc',kl) + proj.atrp('wytrzymalosc',ras)),
		zrecznosc = (proj.atrk('zrecznosc',kl) + proj.atrp('zrecznosc',ras)),
		inteligencja = (proj.atrk('inteligencja',kl) + proj.atrp('inteligencja',ras)),
		percepcja = (proj.atrk('percepcja',kl) + proj.atrp('percepcja',ras)),
		sila_woli = (proj.atrk('sila_woli',kl) + proj.atrp('sila_woli',ras)),
		oglada = (proj.atrk('oglada',kl) + proj.atrp('oglada',ras)),
		wplyw = (proj.atrk('wplyw',kl) + proj.atrp('wplyw',ras)),
		zycie = (proj.atrk('zycie',kl) + proj.atrp('zycie',ras)),
		szczescie = (proj.atrk('szczescie',kl) + proj.atrp('szczescie',ras))
		
		 WHERE
		id_stat=ident;
		
		
		
		
		
    RETURN NEW;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- View structure for statyp
-- ----------------------------
DROP VIEW IF EXISTS "proj"."statyp";
CREATE VIEW "proj"."statyp" AS  SELECT rasa_postaci.nazwa_rasy,
    staty_pocz.walka_wrecz,
    staty_pocz.walka_dyst,
    staty_pocz.sila,
    staty_pocz.wytrzymalosc,
    staty_pocz.zrecznosc,
    staty_pocz.inteligencja,
    staty_pocz.percepcja,
    staty_pocz.sila_woli,
    staty_pocz.oglada,
    staty_pocz.wplyw,
    staty_pocz.zycie,
    staty_pocz.szczescie
   FROM proj.rasa_postaci,
    proj.staty_pocz
  WHERE rasa_postaci.id_rasy = staty_pocz.id_stat;

-- ----------------------------
-- View structure for statyk
-- ----------------------------
DROP VIEW IF EXISTS "proj"."statyk";
CREATE VIEW "proj"."statyk" AS  SELECT klasa_postaci.nazwa_klasy,
    stat_klas.walka_wrecz,
    stat_klas.walka_dyst,
    stat_klas.sila,
    stat_klas.wytrzymalosc,
    stat_klas.zrecznosc,
    stat_klas.inteligencja,
    stat_klas.percepcja,
    stat_klas.sila_woli,
    stat_klas.oglada,
    stat_klas.wplyw,
    stat_klas.zycie,
    stat_klas.szczescie
   FROM proj.klasa_postaci,
    proj.stat_klas
  WHERE klasa_postaci.id_klasa = stat_klas.id_stat;

-- ----------------------------
-- Primary Key structure for table bron_biala
-- ----------------------------
ALTER TABLE "proj"."bron_biala" ADD CONSTRAINT "bron_biala_pkey" PRIMARY KEY ("id_biala");

-- ----------------------------
-- Primary Key structure for table bron_cecha
-- ----------------------------
ALTER TABLE "proj"."bron_cecha" ADD CONSTRAINT "bron_cecha_pkey" PRIMARY KEY ("bron", "cecha");

-- ----------------------------
-- Primary Key structure for table bron_dyst_cecha
-- ----------------------------
ALTER TABLE "proj"."bron_dyst_cecha" ADD CONSTRAINT "bron_dyst_cecha_pkey" PRIMARY KEY ("bron", "cecha");

-- ----------------------------
-- Primary Key structure for table bron_dystansowa
-- ----------------------------
ALTER TABLE "proj"."bron_dystansowa" ADD CONSTRAINT "bron_dystansowa_pkey" PRIMARY KEY ("id_dyst");

-- ----------------------------
-- Primary Key structure for table cechy_specjalne
-- ----------------------------
ALTER TABLE "proj"."cechy_specjalne" ADD CONSTRAINT "cechy_specjalne_pkey" PRIMARY KEY ("id_cecha");

-- ----------------------------
-- Primary Key structure for table ekwipunek
-- ----------------------------
ALTER TABLE "proj"."ekwipunek" ADD CONSTRAINT "ekwipunek_pkey" PRIMARY KEY ("id_ekw");

-- ----------------------------
-- Primary Key structure for table klasa_postaci
-- ----------------------------
ALTER TABLE "proj"."klasa_postaci" ADD CONSTRAINT "klasa_postaci_pkey" PRIMARY KEY ("id_klasa");

-- ----------------------------
-- Primary Key structure for table mag_klasa
-- ----------------------------
ALTER TABLE "proj"."mag_klasa" ADD CONSTRAINT "mag_klasa_pkey" PRIMARY KEY ("id_klasa", "id_magia");

-- ----------------------------
-- Primary Key structure for table pancerz
-- ----------------------------
ALTER TABLE "proj"."pancerz" ADD CONSTRAINT "pancerz_pkey" PRIMARY KEY ("id_panc");

-- ----------------------------
-- Triggers structure for table postacie_graczy
-- ----------------------------
CREATE TRIGGER "insert" AFTER INSERT ON "proj"."postacie_graczy"
FOR EACH STATEMENT
EXECUTE PROCEDURE "proj"."wstaw_stat"();

-- ----------------------------
-- Primary Key structure for table postacie_graczy
-- ----------------------------
ALTER TABLE "proj"."postacie_graczy" ADD CONSTRAINT "postacie_graczy_pkey" PRIMARY KEY ("id_postac", "id_klasa", "id_prof", "id_rasa", "id_region");

-- ----------------------------
-- Primary Key structure for table prof_bron
-- ----------------------------
ALTER TABLE "proj"."prof_bron" ADD CONSTRAINT "prof_bron_pkey" PRIMARY KEY ("id_prof", "id_bron_biala");

-- ----------------------------
-- Primary Key structure for table prof_dyst
-- ----------------------------
ALTER TABLE "proj"."prof_dyst" ADD CONSTRAINT "prof_dyst_pkey" PRIMARY KEY ("id_prof2", "id_dyst");

-- ----------------------------
-- Primary Key structure for table prof_ekw
-- ----------------------------
ALTER TABLE "proj"."prof_ekw" ADD CONSTRAINT "prof_ekw_pkey" PRIMARY KEY ("id_prof4", "id_ekw");

-- ----------------------------
-- Primary Key structure for table prof_panc
-- ----------------------------
ALTER TABLE "proj"."prof_panc" ADD CONSTRAINT "prof_panc_pkey" PRIMARY KEY ("id_prof3", "id_panc");

-- ----------------------------
-- Primary Key structure for table profesje
-- ----------------------------
ALTER TABLE "proj"."profesje" ADD CONSTRAINT "profesje_pkey" PRIMARY KEY ("id_profesji");

-- ----------------------------
-- Primary Key structure for table przeszlosc
-- ----------------------------
ALTER TABLE "proj"."przeszlosc" ADD CONSTRAINT "przeszlosc_pkey" PRIMARY KEY ("id_rasa", "id_region");

-- ----------------------------
-- Primary Key structure for table rasa_postaci
-- ----------------------------
ALTER TABLE "proj"."rasa_postaci" ADD CONSTRAINT "rasa_postaci_pkey" PRIMARY KEY ("id_rasy");

-- ----------------------------
-- Primary Key structure for table region_pochodzenia
-- ----------------------------
ALTER TABLE "proj"."region_pochodzenia" ADD CONSTRAINT "region_pochodzenia_pkey" PRIMARY KEY ("id_poch");

-- ----------------------------
-- Primary Key structure for table rodzaje_magii
-- ----------------------------
ALTER TABLE "proj"."rodzaje_magii" ADD CONSTRAINT "rodzaje_magii_pkey" PRIMARY KEY ("id_magia");

-- ----------------------------
-- Primary Key structure for table stat_klas
-- ----------------------------
ALTER TABLE "proj"."stat_klas" ADD CONSTRAINT "stat_klas_pkey" PRIMARY KEY ("id_stat");

-- ----------------------------
-- Primary Key structure for table stat_postaci
-- ----------------------------
ALTER TABLE "proj"."stat_postaci" ADD CONSTRAINT "stat_postaci_pkey" PRIMARY KEY ("id_stat");

-- ----------------------------
-- Primary Key structure for table staty_pocz
-- ----------------------------
ALTER TABLE "proj"."staty_pocz" ADD CONSTRAINT "staty_pocz_pkey" PRIMARY KEY ("id_stat");

-- ----------------------------
-- Foreign Keys structure for table bron_cecha
-- ----------------------------
ALTER TABLE "proj"."bron_cecha" ADD CONSTRAINT "bc1" FOREIGN KEY ("bron") REFERENCES "proj"."bron_biala" ("id_biala") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."bron_cecha" ADD CONSTRAINT "bc2" FOREIGN KEY ("cecha") REFERENCES "proj"."cechy_specjalne" ("id_cecha") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table bron_dyst_cecha
-- ----------------------------
ALTER TABLE "proj"."bron_dyst_cecha" ADD CONSTRAINT "bdc1" FOREIGN KEY ("bron") REFERENCES "proj"."bron_dystansowa" ("id_dyst") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."bron_dyst_cecha" ADD CONSTRAINT "bdc2" FOREIGN KEY ("cecha") REFERENCES "proj"."cechy_specjalne" ("id_cecha") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table mag_klasa
-- ----------------------------
ALTER TABLE "proj"."mag_klasa" ADD CONSTRAINT "mk1" FOREIGN KEY ("id_klasa") REFERENCES "proj"."klasa_postaci" ("id_klasa") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."mag_klasa" ADD CONSTRAINT "mk2" FOREIGN KEY ("id_magia") REFERENCES "proj"."rodzaje_magii" ("id_magia") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table postacie_graczy
-- ----------------------------
ALTER TABLE "proj"."postacie_graczy" ADD CONSTRAINT "kl" FOREIGN KEY ("id_klasa") REFERENCES "proj"."klasa_postaci" ("id_klasa") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."postacie_graczy" ADD CONSTRAINT "pr" FOREIGN KEY ("id_prof") REFERENCES "proj"."profesje" ("id_profesji") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."postacie_graczy" ADD CONSTRAINT "ras" FOREIGN KEY ("id_rasa") REFERENCES "proj"."rasa_postaci" ("id_rasy") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."postacie_graczy" ADD CONSTRAINT "reg" FOREIGN KEY ("id_region") REFERENCES "proj"."region_pochodzenia" ("id_poch") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."postacie_graczy" ADD CONSTRAINT "stat" FOREIGN KEY ("id_postac") REFERENCES "proj"."stat_postaci" ("id_stat") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prof_bron
-- ----------------------------
ALTER TABLE "proj"."prof_bron" ADD CONSTRAINT "bp1" FOREIGN KEY ("id_prof") REFERENCES "proj"."profesje" ("id_profesji") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."prof_bron" ADD CONSTRAINT "bpo2" FOREIGN KEY ("id_bron_biala") REFERENCES "proj"."bron_biala" ("id_biala") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prof_dyst
-- ----------------------------
ALTER TABLE "proj"."prof_dyst" ADD CONSTRAINT "bdp1" FOREIGN KEY ("id_prof2") REFERENCES "proj"."profesje" ("id_profesji") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."prof_dyst" ADD CONSTRAINT "bdp2" FOREIGN KEY ("id_dyst") REFERENCES "proj"."bron_dystansowa" ("id_dyst") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prof_ekw
-- ----------------------------
ALTER TABLE "proj"."prof_ekw" ADD CONSTRAINT "bekw1" FOREIGN KEY ("id_prof4") REFERENCES "proj"."profesje" ("id_profesji") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."prof_ekw" ADD CONSTRAINT "bekw2" FOREIGN KEY ("id_ekw") REFERENCES "proj"."ekwipunek" ("id_ekw") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prof_panc
-- ----------------------------
ALTER TABLE "proj"."prof_panc" ADD CONSTRAINT "panc1" FOREIGN KEY ("id_prof3") REFERENCES "proj"."profesje" ("id_profesji") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."prof_panc" ADD CONSTRAINT "panc2" FOREIGN KEY ("id_panc") REFERENCES "proj"."pancerz" ("id_panc") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table przeszlosc
-- ----------------------------
ALTER TABLE "proj"."przeszlosc" ADD CONSTRAINT "prz1" FOREIGN KEY ("id_rasa") REFERENCES "proj"."rasa_postaci" ("id_rasy") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "proj"."przeszlosc" ADD CONSTRAINT "prz2" FOREIGN KEY ("id_region") REFERENCES "proj"."region_pochodzenia" ("id_poch") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table rasa_postaci
-- ----------------------------
ALTER TABLE "proj"."rasa_postaci" ADD CONSTRAINT "keysp" FOREIGN KEY ("id_rasy") REFERENCES "proj"."staty_pocz" ("id_stat") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stat_klas
-- ----------------------------
ALTER TABLE "proj"."stat_klas" ADD CONSTRAINT "sk1" FOREIGN KEY ("id_stat") REFERENCES "proj"."klasa_postaci" ("id_klasa") ON DELETE NO ACTION ON UPDATE NO ACTION;
