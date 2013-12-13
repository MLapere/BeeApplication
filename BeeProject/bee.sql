-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2013 at 04:22 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bee`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `zip` int(11) unsigned NOT NULL,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `link` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `zip`, `province`, `city`, `link`) VALUES
(1, 1111, 'noord', 'ams', 'https://maps.google.com/maps?q=amsterdam&hl=en&sll=37.0625,-95.677068&sspn=38.365962,79.013672&t=h&hnear=Amsterdam,+Government+of+Amsterdam,+North+Holland,+The+Netherlands&z=11'),
(2, 2222, 'zuid', 'utr', 'https://maps.google.com/maps?q=Utrecht,+The+Netherlands&hl=en&sll=52.370216,4.895168&sspn=0.231419,0.617294&oq=utr&t=h&hnear=Utrecht,+The+Netherlands&z=11');

-- --------------------------------------------------------

--
-- Table structure for table `area_disease`
--

CREATE TABLE `area_disease` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `area_id` int(11) unsigned NOT NULL,
  `disease_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `disease_id` (`disease_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `name`, `description`) VALUES
(1, 'Varroa mites', 'Varroa destructor and Varroa jacobsoni are parasitic mites that feed on the bodily fluids of adult, pupal and larval bees. Varroa mites can be seen with the naked eye as a small red or brown spot on the bee''s thorax. Varroa mites are carriers for a virus that is particularly damaging to the bees. Bees infected with this virus during their development will often have visibly deformed wings. Varroa mites have led to the virtual elimination of feral bee colonies in many areas, and are a major problem for kept bees in apiaries. Some feral populations are now recovering—it appears they have been naturally selected for Varroa resistance. Varroa mites were first discovered in Southeast Asia in about 1904, but are now present on all continents except Australia. They were discovered in the United States in 1987, in New Zealand in 2000, and in Devon, United Kingdom in 1992. These mites are generally not a problem for a strongly growing hive. When the hive population growth is reduced in preparation for winter or due to poor late summer forage, the mite population growth can overtake that of the bees and can then destroy the hive. Often a colony will simply abscond (leave as in a swarm, but leaving no population behind) under such conditions. Varroa in combination with deformed wing virus and bacteria have been theoretically implicated in colony collapse disorder.'),
(2, 'Acarine (Tracheal) mites', 'Acarapis woodi is a small parasitic mite that infests the airways of the honey bee. The first known infestation of the mites occurred in the British Isles in the early 20th century. First observed on the Isle of Wight in 1904, the mystery illness known as Isle of Wight Disease was not identified as being caused by a parasite until 1921. It quickly spread to the rest of Great Britain. It was regarded as having wiped out the entire native bee population of the British Isles (although later genetic studies have found remnants that did survive) and it dealt a devastating blow to British beekeeping. Brother Adam at the Buckfast Abbey developed a resistant hybrid bee known as the Buckfast bee, which is now available worldwide to combat acarine disease. Diagnosis for tracheal mites generally involves the dissection and microscopic examination of a sample of bees from the hive. Acarine mites, formerly known as tracheal mites are believed to have entered the US in 1984, via Mexico. Mature female acarine mites leave the bee''s airway and climb out on a hair of the bee, where they wait until they can transfer to a young bee. Once on the new bee, they will move into the airways and begin laying eggs.'),
(3, 'Nosema', 'Nosema apis is a microsporidian that invades the intestinal tracts of adult bees and causes nosema disease, also known as nosemosis. Nosema is also associated with Black queen-cell virus. Nosema is normally only a problem when the bees can not leave the hive to eliminate waste (for example, during an extended cold spell in winter or when the hives are enclosed in a wintering barn). When the bees are unable to void (cleansing flights), they can develop dysentery. Nosema is treated by increasing the ventilation through the hive. Some beekeepers will treat a hive with antibiotics such as fumagillan. Nosema can also be prevented or minimized by removing much of the honey from the beehive then feeding the bees on sugar water in the late fall. Sugar water made from refined sugar has lower ash content than flower nectar, reducing the risk of dysentery. Refined sugar, however, contains fewer nutrients than natural honey[4] which causes some controversy among beekeepers [Nutrient Database(USDA SR-21)]In 1996, a similar type of organism to Nosema apis was discovered on the Asian honey bee Apis cerana and subsequently named Nosema ceranae. This parasite apparently also infects the Western honey bee. It has been reported that exposure to corn pollen containing genes for Bacillus thuringiensis (Bt) production may weaken the bees defense against Nosema. In this study, it is stated that in relation to feeding a group of bees with Bt corn pollen and a control group with non-Bt corn pollen, that: "in the first year the bee colonies happened to be infested with parasites (microsporidia). This infestation led to a reduction in the number of bees and subsequently to reduced broods in the Bt-fed colonies as well as in the colonies fed on Bt-toxin-free pollen. The trial was therefore discontinued at an early stage. This effect was significantly more marked in the Bt-fed colonies. (The significant differences indicate an interaction of toxin and pathogen on the epithelial cells of the honeybee intestine. The underlying mechanism which causes this effect is unknown.)" This study should be interpreted with caution given that there was no repetition of the experiment nor any attempt to find confounding factors. In addition, it is noteworthy that BT toxin and transgenic BT pollen showed no acute toxicity to any of the life stages of the bees examined, even when the BT toxin was fed at concentrations 100 times that found in transgenic BT pollen from maize.'),
(4, 'Small hive beetle', 'Aethina tumida is a small, dark-colored beetle that lives in beehives.\r\n\r\nOriginally from Africa, the first discovery of small hive beetles in the western hemisphere occurred in the US. The first identified specimen was found in St. Lucie, FL in 1998. The next year, a specimen collected from Charleston, SC in 1996 was identified and is believed to be the index case for the United States.[7] By December 1999, small hive beetle was reported in Iowa, Maine, Massachusetts, Minnesota, New Jersey, Ohio, Pennsylvania, Texas, and Wisconsin, and was found in California by 2006.\r\n\r\nThe life cycle of this beetle includes pupation in the ground outside of the hive. Controls to prevent ants from climbing into the hive are believed to also be effective against the hive beetle. Several beekeepers are experimenting with the use of diatomaceous earth around the hive as a way to disrupt the beetle''s lifecycle. The diatoms abrade the insect''s surface, causing them to dehydrate and die.\r\n\r\nSeveral pesticides are currently used against the small hive beetle. The chemical is commonly applied inside the corrugations of a piece of cardboard. Standard corrugations are large enough that a small hive beetle will enter the cardboard through the end but small enough that honey bees can not enter (and thus are kept away from the pesticide). Alternative controls (such as cooking-oil-based bottom board traps) are also becoming available. Also available are beetle eaters[clarification needed] that go between the frames that uses cooking oil.'),
(5, 'Wax moths', 'Galleria mellonella (greater wax moths) will not attack the bees directly, but feed on the wax used by the bees to build their honeycomb. Their full development to adults requires access to used brood comb or brood cell cleanings—these contain protein essential for the larvae''s development, in the form of brood cocoons.\r\n\r\nThe destruction of the comb will spill or contaminate stored honey and may kill bee larvae.\r\n\r\nWhen honey supers are stored for the winter in a mild climate, or in heated storage, the wax moth larvae can destroy portions of the comb, even though they will not fully develop. Damaged comb may be scraped out and will be replaced by the bees. Wax moth larvae and eggs are killed by freezing, so storage in unheated sheds or barns in higher latitudes is the only control necessary.\r\n\r\nBecause wax moths cannot survive a cold winter, they are usually not a problem for beekeepers in the northern U.S. or Canada, unless they survive winter in heated storage, or are brought from the south by purchase or migration of beekeepers. They thrive and spread most rapidly with temperatures above 30 °C (90 °F), so some areas with only occasional days that hot, rarely have a problem with wax moths, unless the colony is already weak due to stress from other factors.'),
(6, 'Tropilaelaps', 'Tropilaelaps clareae and Tropilaelaps mercedesae are considered threats to honeybees. These mites have the potential to inflict serious damage to colonies due to their rapid reproduction inside the hive.'),
(7, 'American foulbrood', 'American foulbrood (AFB), caused by the spore-forming Paenibacillus larvae[9] (formerly classified as Bacillus larvae and Paenibacillus larvae ssp larvae/pulvifaciens), is the most widespread and destructive of the bee brood diseases. Paenibacillus larvae is a rod-shaped bacterium, which is visible only under a high power microscope. Larvae up to 3 days old become infected by ingesting spores that are present in their food. Young larvae less than 24 hours old are most susceptible to infection. Spores germinate in the gut of the larva and the vegetative form of the bacteria begins to grow, taking its nourishment from the larva. Spores will not germinate in larvae over 3 days old. Infected larvae normally die after their cell is sealed. The vegetative form of the bacterium will die but not before it produces many millions of spores. Each dead larva may contain as many as 100 million spores. This disease only affects the bee larvae but is highly infectious and deadly to bee brood. Infected larvae darken and die.\r\n\r\nAs with European foulbrood, research has been conducted using the ''Shook Swarm'' [10] method to control American foulbrood, "the advantage being that chemicals are not used".'),
(8, 'European foulbrood', 'Melissococcus plutonius is a bacterium that infects the mid-gut of the bee larva. European foulbrood is considered less serious than American foulbrood. Melissococcus plutonius is not a spore forming bacteria, however bacterial cells can survive several months on wax foundation. Symptoms include dead and dying larvae which can appear curled upwards, brown or yellow, melted or deflated with tracheal tubes more apparent, or dried out and rubbery.[11]\r\n\r\nEuropean foulbrood is often considered a "stress" disease—a disease that is dangerous only if the colony is already under stress for other reasons. An otherwise healthy colony can usually survive European foulbrood. An outbreak of the disease may be controlled chemically with oxytetracycline hydrochloride, but honey from treated colonies could have chemical residues from the treatment. The ''Shook Swarm'' [10] technique of bee husbandry can also be used to effectively control the disease, the advantage being that chemicals are not used. Prophylactic treatments are not recommended as they lead to resistant bacteria.'),
(9, 'Chalkbrood', 'Ascosphaera apis is a fungal disease that infests the gut of the larva. The fungus will compete with the larva for food, ultimately causing it to starve. The fungus will then go on to consume the rest of the larva''s body, causing it to appear white and ''chalky''.\r\n\r\nChalkbrood is most commonly visible during wet springs. Hives with Chalkbrood can generally be recovered by increasing the ventilation through the hive.'),
(10, 'Stonebrood', 'Stonebrood is a fungal disease caused by Aspergillus fumigatus, Aspergillus flavus and Aspergillus niger. It causes mummification of the brood of a honey bee colony. The fungi are common soil inhabitants and are also pathogenic to other insects, birds and mammals. The disease is difficult to identify in the early stages of infection. The spores of the different species have different colours and can also cause respiratory damage to humans and other animals. When a bee larva takes in spores they may hatch in the gut, growing rapidly to form a collarlike ring near the head. After death the larvae turn black and become difficult to crush, hence the name stonebrood. Eventually the fungus erupts from the integument of the larva and forms a false skin. In this stage the larvae are covered with powdery fungal spores. Worker bees clean out the infected brood and the hive may recover depending on factors such as the strength of the colony, the level of infection, and hygienic habits of the strain of bees (there is variation in the trait among different subspecies/races).'),
(11, 'Chronic Paralysis Virus [CPV]', 'Syndrome 1 Abnormal trembling of the wings and body. The bees cannot fly and often crawl on the ground and up plant stems. In some cases the crawling bees can be in large numbers (1000+). The bees huddle together on the top of the cluster or on the top bars of the hive. They may have bloated abdomens due to distension of the honey sac. The wings are partially spread or dislocated.\n\nSyndrome 2 Affected bees are able to fly but are almost hairless. They appear dark or black and look smaller. They have a relatively broad abdomen. They are often nibbled by older bees in the colony and this may be the cause of the hairlessness. They are hindered at the entrance to the hive by the guard bees. A few days after infection trembling begins. They then become flightless and soon die.\n'),
(12, 'Acute bee paralysis virus (ABPV) or (APV)', 'ABPV (TaxID 92444) is considered to be a common infective agent of bees. It belongs to the family Dicistroviridae,[1] as does the Israel acute paralysis virus, Kashmir bee virus, and the Black queen cell virus. It is frequently detected in apparently healthy colonies. Apparently, this virus plays a role in cases of sudden collapse of honey bee colonies infested with the parasitic mite Varroa destructor'),
(13, 'Israeli acute paralysis virus (IAPV)', 'A related virus [2] described in 2004 is known as the "Israeli acute paralysis virus" (TaxID 294365); The virus is named after the place where it was first identified—its place of origin is unknown. IAPV [3] has been suggested in September 2007 as a marker associated with Colony Collapse Disorder.'),
(14, 'Kashmir bee virus (KBV)', 'This is another Dicistroviridae, related to the preceding viruses.[4] Recently discovered, KBV (TaxID 68876) is currently only positively identifiable by a laboratory test. Little is known about it yet.'),
(15, 'Black Queen Cell Virus (BQCV)', 'This is another Dicistroviridae, related to the preceding viruses.[5] As its name implies, BQCV (TaxID 92395) causes the queen larva to turn black and die. It is thought to be associated with Nosema.'),
(16, 'Cloudy Wing Virus (CWV)', 'Cloudy wing virus (CWV) is a little studied small icosahedral virus commonly found in honey bees (Apis mellifera), especially in collapsing colonies infested by Varroa destructor, providing circumstantial evidence that the mite may act as a vector.'),
(17, 'Sacbrood virus (SBV)', 'Morator aetatulas is the virus that causes sacbrood disease. Affected larvae change from pearly white to gray and finally black. Death occurs when the larvae are upright, just before pupation. Consequently, affected larvae are usually found in capped cells. Head development of diseased larvae is typically retarded. The head region is usually darker than the rest of the body and may lean toward the center of the cell. When affected larvae are carefully removed from their cells, they appear to be a sac filled with water. Typically the scales are brittle but easy to remove. Sacbrood-diseased larvae have no characteristic odor.'),
(18, 'Deformed Wing Virus (DWV)', 'Deformed wing virus (DWV) is the causative agent of the wing deformities and other body malformations typically seen in honeybee colonies that are heavily infested with the parasitic mite Varroa destructor.[23] Deformed wing virus is part of a complex of closely related virus strains/species that also includes Kakugo virus, Varroa destructor virus-1 and Egypt bee virus. This deformity can clearly be seen on the honeybee''s wings in the image. The deformities are produced almost exclusively due to DWV transmission by Varroa destructor when it parasitizes pupa. Bees that are infected as adults remain symptom-free, although they do display behavioral changes and have reduced life expectancy. Deformed bees are rapidly expelled from the colony, leading to a gradual loss of adult bees for colony maintenance. If this loss is excessive and can no longer be compensated by the emergence of healthy bees, the colony rapidly dwindles and dies.'),
(19, 'Kakugo virus (KV)', 'This is an iflavirus infecting bees. Research suggests that varroa mites mediate KV prevalence.'),
(20, 'Invertebrate iridescent virus type 6 (IIV-6)', 'Applying proteomics-based pathogen screening tools in 2010, researchers announced they had identified a co-infection of an iridovirus;[26] specifically invertebrate iridescent virus type 6 (IIV-6) and Nosema ceranae in all CCD colonies sampled.[27] On the basis of this research, the New York Times reported the colony collapse mystery solved, quoting researcher Dr. Bromenshenk, a co-author of the study, "[The virus and fungus] are both present in all these collapsed colonies."[28][29] Evidence for this association, however, remains minimal[30] and several authors have disputed the original methodology used to associate CCD with IIV-6.'),
(21, 'Dysentery', 'Dysentery is a condition resulting from a combination of long periods of inability to make cleansing flights (generally due to cold weather) and food stores which contain a high proportion of indigestible matter. As a bee''s gut becomes engorged with feces that cannot be voided in flight as preferred by the bees, the bee voids within the hive. When enough bees do this the hive population rapidly collapses and death of the colony results. Dark honeys and honeydews have greater quantities of indigestible matter.\r\n\r\nOccasional warm days in winter are critical for honey bee survival; dysentery problems increase in likelihood if there are periods of more than two or three weeks with temperatures below 50 degrees Fahrenheit (10 degrees Celsius). When cleansing flights are few, bees will often be forced out at times when the temperature is barely adequate for their wing muscles to function, and large quantities of bees may be seen dead in the snow around the hives.\r\n\r\nColonies that are found dead in spring from dysentery will have feces smeared over the frames and other hive parts.\r\n\r\nIn very cold areas of North America and Europe, where honey bees are kept in ventilated buildings during the coldest part of winter, no cleansing flights are possible; under such circumstances, it is common for beekeepers to remove all honey from the hives and replace it with sugar water or high fructose corn syrup, which have nearly no indigestible matter.'),
(22, 'Chilled brood', 'Chilled brood is not actually a disease but can be a result of mistreatment of the bees by the beekeeper. It also can be caused by a pesticide hit that primarily kills off the adult population, or by a sudden drop in temperature during rapid spring buildup. The brood must be kept warm at all times; nurse bees will cluster over the brood to keep it at the right temperature. When a beekeeper opens the hive (to inspect, remove honey, check the queen, or just to look) and prevents the nurse bees from clustering on the frame for too long, the brood can become chilled, deforming or even killing some of the bees.\r\n\r\nTo minimize the risk of chilled brood, open the hive on warm days and at the hottest part of the day (this is also the time when the most field bees will be out foraging and the number of bees in the hive will be at its lowest). Learn to inspect your hive as quickly as possible and put frames with brood back where the bees can cluster on it immediately.'),
(23, 'Pesticide losses', 'Honey bees are susceptible to many of the chemicals used for agricultural spraying of other insects and pests. Many pesticides are known to be toxic to bees. Because the bees forage up to several miles from the hive, they may fly into areas actively being sprayed by farmers or they may collect pollen from contaminated flowers.\r\n\r\nCarbamate pesticides, such as Sevin(R)-Carbaryl (C12H11NO2)can be especially pernicious since toxicity can take as long as two days to become effective; allowing infected pollen to be returned and distributed throughout the colony. Organophosphates and other insecticides are also known to kill honey bee clusters in treated areas.\r\n\r\nPesticide losses may be relatively easy to identify (large and sudden numbers of dead bees in front of the hive) or quite difficult, especially if the loss results from a gradual accumulation of pesticide brought in by the foraging bees. Quick acting pesticides may deprive the hive of its foragers, dropping them in the field before they can return home.\r\n\r\nInsecticides that are toxic to bees have label directions that protect the bees from poisoning as they forage. To comply with the label, applicators must know where and when bees forage in the application area, and the length of residual activity of the pesticide.\r\n\r\nSome pesticide authorities recommend, and some jurisdictions require, that notice of spraying be sent to all known beekeepers in the area so that they can seal the entrances to their hives and keep the bees inside until the pesticide has had a chance to disperse. This, however, does not solve all problems associated with spraying and the label instructions should be followed regardless of doing this. Sealing honey bees from flight on hot days can kill bees. Beekeeper notification does not offer any protection to bees, if the beekeeper cannot access them, or to wild native or feral honey bees. Thus beekeeper notification as the sole protection procedure does not really protect all the pollinators of the area, and is, in effect, a circumventing of the label requirements. Pesticide losses are a major factor in pollinator decline.'),
(24, 'Colony Collapse Disorder', 'Colony Collapse Disorder (or CCD) is a poorly understood phenomenon in which worker bees from a beehive or Western honey bee colony abruptly disappear. CCD was originally found in Western honey bee colonies in North America in late 2006.[33]\r\n\r\nEuropean beekeepers observed a similar phenomenon in Belgium, France, the Netherlands, Greece, Italy, Portugal, and Spain,[34] and initial reports have also come in from Switzerland and Germany, albeit to a lesser degree.[35] Possible cases of CCD have also been reported in Taiwan since April 2007.[36]\r\n\r\nInitial hypotheses were wildly different including environmental change-related stresses,[37] malnutrition, pathogens (i.e., disease[38] including Israel acute paralysis virus[6][39]), mites, or the class of pesticides known as neonicotinoids, which include imidacloprid, clothianidin, and thiamethoxam. Unproven and less credible theories include radiation from cellular phones or other man-made devices,[40] and genetically modified (GM) crops with pest control characteristics such as transgenic maize.[41] In 2010, US researchers announced they had identified a co-infection of invertebrate iridescent virus type 6 (IIV-6) and Nosema ceranae in all CCD colonies sampled.');

-- --------------------------------------------------------

--
-- Table structure for table `disease_sympt`
--

CREATE TABLE `disease_sympt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `disease_id` int(11) unsigned NOT NULL,
  `sympt_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disease_id` (`disease_id`),
  KEY `sympt_id` (`sympt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `disease_sympt`
--

INSERT INTO `disease_sympt` (`id`, `disease_id`, `sympt_id`) VALUES
(3, 3, 3),
(4, 7, 4),
(5, 18, 5),
(6, 24, 6);

-- --------------------------------------------------------

--
-- Table structure for table `symptom`
--

CREATE TABLE `symptom` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `symptom`
--

INSERT INTO `symptom` (`id`, `name`, `description`) VALUES
(3, 'Nosema', 'The symptoms of Nosema are relatively nonspecific. This makes it easy to confuse with other diseases of the honeybee. It arises mostly in the spring after periods of bad weather, although it may also be a winter disease that is only noticed in the spring when beekeepers first inspect their hives. The female worker bees are most strongly afflicted, less so the drones. The queen bee is rarely infected since afflicted bees rarely participate in feeding the queen. The most notable symptom is dysentery. This appears as yellow stripes on the outside of the hive and in severe cases, inside the hive. Bees may be unable to fly ("crawling") due to disjointed wings.\r\n\r\nFurther symptoms include increased girth of the abdomen, missing sting reflex, and early supersedure of the queen. If the queen is infected, her ovaries degenerate and ovum production drops due to atrophy of the ova, after which she is likely to be superseded. The disease pattern described by Higes et al.. in Spain for Nosema ceranae is slightly different than with Nosema apis. The changes in the digestive system were substantially more serious than with Nosema apis, related to particularly heavy and spacious cell lesions. On the other hand, classical symptoms were missing from Nosema ceranae, such as diarrhea, crawling, large numbers of dead bees in the apiary etc. Bees tend to die away from the apiary, which causes a reduction in food gathered and can eventually lead to colony collapse. Ritter (CVUA Freiburg) reports symptoms can arise throughout the year from Nosema ceranae, in contrast to Nosema apis.[4] In the winter some colonies died within a short time and the bees lay dead in the box (in Spain, hives usually remained empty). Whether these features are related to the new form of Nosema cannot be conclusively proven.'),
(4, 'American foulbrood', 'Lab testing is necessary for definitive diagnosis, but a good field test is to touch a dead larva with a toothpick or twig. It will be sticky and "ropey" (drawn out). Foulbrood also has a characteristic odor, and experienced beekeepers with a good sense of smell can often detect the disease upon opening a hive.[citation needed] In the photo at right, some larvae are healthy while others are diseased. Capped cells with decomposing larvae are sunken, as can be seen at lower right. Some caps may be torn, as well. Compare with healthy brood. The most reliable disease diagnosis is done by sending in some possibly affected brood comb to a laboratory specialized in identifying honey bee diseases.'),
(5, 'Deformed wing virus', 'Deformed wing virus (DWV) is suspected of causing the wing and abdominal deformities often found on adult honeybees in colonies infested with Varroa mites. These symptoms include damaged appendages, particularly stubby, useless wings, shortened, rounded abdomens, miscoloring and paralysis of the legs and wings. Symptomatic bees have severely reduced life-span (less than 48 hours usually) and are typically expelled from the hive. The symptoms are strongly correlated with elevated DWV titres, with reduced titres in asymptomatic bees from the same colonies. In the absence of mites the virus is thought to persist in the bee populations as a covert infection, transmitted orally between adults (nurse bees) since the virus can be detected in hypopharyngeal secretions (royal jelly) and broodfood and also vertically through the queen''s ovaries and through drone sperm. The virus may replicate in the mite but this is not certain.'),
(6, 'Colony collapse disorder (CCD)', 'In collapsed colonies CCD is suspected when there is a complete absence of adult bees in colonies, with no or little build up of dead bees in the hive or in front of the hive. A colony which has collapsed from CCD is generally characterized by all of these conditions occurring simultaneously:[23]\r\n\r\n    Presence of capped brood in abandoned colonies. Bees normally will not abandon a hive until the capped brood have all hatched.\r\n    Presence of food stores, both honey and bee pollen:\r\n        i. which are not immediately robbed by other bees\r\n        ii. which when attacked by hive pests such as wax moth and small hive beetle, the attack is noticeably delayed.\r\n    Presence of the queen bee. If the queen is not present, the hive died because it was queenless, which is not considered CCD.\r\n\r\nPrecursor symptoms that may arise before the final colony collapse are:\r\n\r\n    Insufficient workforce to maintain the brood that is present\r\n    Workforce seems to be made up of young adult bees\r\n    The colony members are reluctant to consume provided feed, such as sugar syrup and protein supplement.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `tname`, `description`) VALUES
(1, 'Varroa mites', 'A variety of treatments are currently marketed or practiced to attempt to control these mites. The treatments are generally segregated into chemical and mechanical controls. Common chemical controls include "hard" chemicals such as fluvalinate (marketed as Apistan) and coumaphos (marketed as CheckMite) and "soft" chemicals such as thymol (marketed as ApiLife-VAR and Apiguard), sucrose octanoate esters (marketed as Sucrocide), oxalic acid and formic acid (sold in gel packs as Mite-Away, but also used in other formulations). According to the U.S. Environmental Protection Agency, when used in beehives as directed, these treatments kill a large proportion of the mites while not substantially disrupting bee behavior or life span. Use of chemical controls is generally regulated and varies from country to country. With few exceptions, they are not intended for use during production of marketable honey. Common mechanical controls generally rely on disruption of some aspect of the mites'' lifecycle. These controls are generally intended not to eliminate all mites, but merely to maintain the infestation at a level which the colony can tolerate. Examples of mechanical controls include drone brood sacrifice (varroa mites are preferentially attracted to the drone brood), powdered sugar dusting (which encourages cleaning behavior and dislodges some mites), screened bottom boards (so any dislodged mites fall through the bottom and away from the colony), brood interruption and, perhaps, downsizing of the brood cell size. A device called the varroa mite control entrance (VMCE) is under development as of 2008. The VMCE works in conjunction with a screened bottom board, by dislodging varroa mites from bees as they enter and exit a hive.'),
(2, 'Acarine (Tracheal) mites', 'Acarine mites are commonly controlled with grease patties (typically made from 1 part vegetable shortening mixed with 3–4 parts powdered sugar) placed on the top bars of the hive. The bees come to eat the sugar and pick up traces of shortening, which disrupts the mite''s ability to identify a young bee. Some of the mites waiting to transfer to a new host will remain on the original host. Others will transfer to a random bee—a proportion of which will die of other causes before the mite can reproduce. Menthol, either allowed to vaporize from crystal form or mixed into the grease patties, is also often used to treat acarine mites.'),
(3, 'Wax moths - Control and treatment', 'A strong hive generally needs no treatment to control wax moths; the bees themselves will kill and clean out the moth larvae and webs. Wax moth larvae may fully develop in cell cleanings when such cleanings accumulate thickly where they are not accessible to the bees.\r\n\r\nWax moth development in comb is generally not a problem with top bar hives as unused combs are usually left in the hive during the winter. Since this type of hive is not used in severe wintering conditions, the bees will be able to patrol and inspect the unused comb.\r\n\r\nWax moths can be controlled in stored comb by application of the aizawai variety of Bt (Bacillus thuringiensis) spores via spraying. It is a very effective biological control and has an excellent safety record[citation needed].\r\n\r\nWax moths can be controlled chemically with paradichlorobenzene (moth crystals or urinal disks). If chemical methods are used, the combs must be well-aired-out for several days before use. The use of naphthalene (mothballs) is discouraged because it accumulates in the wax, which can kill bees or contaminate honey stores. Control of wax moths by other means includes the freezing of the comb for at least twenty-four hours.'),
(4, 'Nosema', 'Treatment with the antibiotic Fumidil B (prepared from Aspergillus fumigatus, the causative agent of Stone Brood) inhibits the spores reproducing in the ventriculus, but does not kill the spores. A disinfection of the honeycombs and utensils is recommended for an extensive disease outbreak.\r\n\r\nThe spores are sensitive to chemicals such as acetic acid and formaldehyde, and physical radiation: ultrasonic and gamma radiation.\r\n\r\nHeat treatment in 49 °C (120 °F) for 24 hours can be used to kill the spores on contaminated equipment.'),
(5, 'Small hive beetle', 'The small hive beetle is considered a secondary pest in South Africa, and, as such, has not been the subject of major control efforts. The beetle is most often found in weak or failing hives and rarely affects strong hives. However, differences in the housecleaning traits of the bees found in South Africa and the U.S. may mean very different responses to the beetles. Some early reports from Florida and South Carolina suggest the beetles may be more damaging there than in Africa. PDB (paradichlorobenzene) has been used for protecting empty stored combs. Coumaphos bee strips (Bayer Corporation) have been approved for use in hives for the control of small hive beetles in some states under an emergency registration.\r\n\r\nThe most effective control against small hive beetle is maintaining colony strength. Coupled with minimizing empty frames of comb, this will all but eliminate the chances of colony failure.\r\n\r\nThere are also several traps currently on the market. The more effective ones are the Beetlejail Baitable, Hood Trap, the Freeman Beetle Trap, the West trap, the Australian, AJ''s Beetle Eater[5] and the Beetle Blaster.[6] All these traps use non-toxic oil to suffocate the beetles. This allows beekeepers to avoid having toxic chemicals in their beehives.\r\n\r\nTo preserve the beetles for identification, it is recommended to submerse the beetle in a container or methylated spirits or vinegar. This will kill live beetles.'),
(6, 'American foulbrood', 'Antibiotics, in non-resistant strains of the pathogen, can prevent the vegetative state of the bacterium forming. Drug treatment to prevent the American foulbrood spores from successfully germinating and proliferating is possible using oxytetracycline hydrochloride (Terramycin).[10] Another drug treatment, tylosin tartrate, was approved by the US Food and Drug Administration (FDA) in 2005.[11]\r\n\r\nChemical treatment is sometimes used prophylactically, but this is a source of considerable controversy because certain strains of the bacterium seem to be rapidly developing resistance.[12] In addition, hives that are contaminated with millions of American foulbrood spores have to be prophylactically treated indefinitely. Once the treatment is suspended the American foulbrood spores germinate successfully again leading to a disease outbreak.\r\n\r\nBecause of the persistence of the spores (which can survive up to 40 years), many State Apiary Inspectors require an AFB diseased hive to be burned completely. A less radical method of containing the spread of disease is burning the frames and comb and thoroughly flame scorching the interior of the hive body, bottom board and covers. Dipping the hive parts in hot paraffin wax or a 3% sodium hypochlorite solution (bleach) also renders the AFB spores innocuous.[13] It is also possible to sterilize an infected hive without damaging either the structure of the hive or the stores of honey and pollen it contains by sufficiently lengthy exposure to an atmosphere of ethylene oxide gas, as in a closed chamber, as hospitals do to sterilize equipment that cannot withstand steam sterilization.');

-- --------------------------------------------------------

--
-- Table structure for table `treat_disease`
--

CREATE TABLE `treat_disease` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `treat_id` int(11) unsigned NOT NULL,
  `disease_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `treat_id` (`treat_id`),
  KEY `disease_id` (`disease_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `treat_disease`
--

INSERT INTO `treat_disease` (`id`, `treat_id`, `disease_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 5),
(4, 4, 3),
(5, 5, 4),
(6, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`) VALUES
(1, 'John', 'Doe', 'john@doe.net'),
(2, 'Philippe', 'Doe', 'phil@doe.net');

-- --------------------------------------------------------

--
-- Table structure for table `user_sympt`
--

CREATE TABLE `user_sympt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `sympt_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `sympt_id` (`sympt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area_disease`
--
ALTER TABLE `area_disease`
  ADD CONSTRAINT `area_disease_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `area_disease_ibfk_2` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`);

--
-- Constraints for table `disease_sympt`
--
ALTER TABLE `disease_sympt`
  ADD CONSTRAINT `disease_sympt_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`),
  ADD CONSTRAINT `disease_sympt_ibfk_2` FOREIGN KEY (`sympt_id`) REFERENCES `symptom` (`id`);

--
-- Constraints for table `treat_disease`
--
ALTER TABLE `treat_disease`
  ADD CONSTRAINT `treat_disease_ibfk_1` FOREIGN KEY (`treat_id`) REFERENCES `treatment` (`id`),
  ADD CONSTRAINT `treat_disease_ibfk_2` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`);

--
-- Constraints for table `user_sympt`
--
ALTER TABLE `user_sympt`
  ADD CONSTRAINT `user_sympt_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_sympt_ibfk_2` FOREIGN KEY (`sympt_id`) REFERENCES `symptom` (`id`);
