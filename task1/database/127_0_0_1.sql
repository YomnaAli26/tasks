-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2023 at 11:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `addiction`
--
CREATE DATABASE IF NOT EXISTS `addiction` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `addiction`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `Date`, `Time`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(2, '2023-07-24', '07:03:19', 39, 70, '2023-03-11 14:41:30', '2023-03-11 14:41:30'),
(3, '2023-01-02', '16:10:35', 17, 74, '2023-03-11 14:41:30', '2023-03-11 14:41:30'),
(4, '2023-10-03', '13:04:47', 22, 74, '2023-03-11 14:41:31', '2023-03-11 14:41:31'),
(5, '2007-03-10', '15:11:51', 17, 76, '2023-03-11 14:41:31', '2023-03-11 14:41:31'),
(6, '2017-09-19', '13:55:11', 22, 72, '2023-03-12 15:07:11', '2023-03-12 15:07:11'),
(7, '2018-03-02', '02:34:46', 22, 70, '2023-03-12 15:07:11', '2023-03-12 15:07:11'),
(8, '1988-11-16', '02:27:13', 22, 76, '2023-03-12 15:07:11', '2023-03-12 15:07:11'),
(9, '1980-01-24', '21:39:29', 24, 75, '2023-03-12 15:07:11', '2023-03-12 15:07:11'),
(10, '1975-06-18', '11:14:52', 24, 72, '2023-03-12 15:07:11', '2023-03-12 15:07:11'),
(11, '2022-11-25', '19:01:58', 25, 72, '2023-03-24 16:52:53', '2023-03-24 16:52:53'),
(12, '2014-11-06', '22:35:22', 24, 70, '2023-03-24 16:52:53', '2023-03-24 16:52:53'),
(13, '2007-10-19', '19:34:21', 25, 76, '2023-03-24 16:52:53', '2023-03-24 16:52:53'),
(14, '2014-02-09', '12:04:37', 25, 75, '2023-03-24 16:52:53', '2023-03-24 16:52:53'),
(79, '2023-06-19', '16:38:00', 2, 72, '2023-06-18 15:33:06', '2023-06-18 15:33:06'),
(80, '2023-06-30', '12:54:00', 2, 74, '2023-06-21 06:54:59', '2023-06-21 06:54:59'),
(81, '2023-06-27', '17:45:00', 32, 70, '2023-06-21 07:45:58', '2023-06-21 07:45:58'),
(82, '2023-06-14', '14:53:00', 2, 72, '2023-06-22 11:54:18', '2023-06-22 11:54:18'),
(83, '2023-06-27', '17:57:00', 2, 72, '2023-06-22 11:57:18', '2023-06-22 11:57:18'),
(84, '2023-06-14', '10:33:00', 22, 72, '2023-06-23 20:33:57', '2023-06-23 20:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `desc` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `content`, `desc`, `img`, `cate_id`, `created_at`, `updated_at`, `user_type`) VALUES
(2, 'Some people use the term food addiction to talk about a compulsive or uncontrollable urge to eat food that does not relate to feelings of hunger. This behavior may occur in response to an emotion, such as stress, sadness, or anger.However, defining food addiction has been challenging. The Diagnostic and Statistical Manual of Mental Disorders, 5th Edition (DSM-5) does not include a standalone category for diagnosing food addiction.The human body needs food to provide energy and nutrition. However, people can feel addicted to food when they become dependent on certain types of foods. Any food can make a person feel addictive tendencies.In this article, we define food addiction and its characteristics, as well as giving tips on how to manage potential eating compulsions when they occur.What is a food addiction?A person with a food addiction may have an uncontrollable urge to eat food.According to 2019 researchTrusted Source, three positions summarize the current debate around food addiction:The addictive potential of certain foods, such as those with high levels of carbohydrates or fat, qualifies food addiction as a substance use disorder.Researchers have not identified a specific substance that triggers addiction, such as the nicotine in cigarettes, in potentially ‘addictive’ foods. This means that eating addiction is behavioral and not related to a substance.Neither of the above holds scientific weight, and even if they did, diagnosing compulsive eating as a food addiction would not be clinically helpful.Despite not having a formal diagnosis in DSM-5, some healthcare professionals still use the termTrusted Source ‘food addiction’.The study leader, Dr. Miele, argues that some people cite obesity prevention as justification for a food addiction diagnosis, and that many laws around restricting potentially ‘addictive’ foods take inspiration from similar laws around tobacco and alcohol, such as higher taxation.Around 35% of adults in the United States have obesity. However, people with obesity equate to only about one-third of those who compulsively eat, even though food addiction has some associations with weight gain.While food addiction may contribute to obesity for some people, it is also not the only factor. One earlier reviewTrusted Source found that up to 10% of people with a normal weight range or overweight had food addiction. However, there are few recent studies on its prevalence.Therefore, Dr. Miele maintains that treating compulsive eating might have indirect benefits for obesity prevention at a national level but that the success of these initiatives does not depend on people compulsively eating.Other researchers argue that there is not enough evidence to suggest that food has the same addictive qualities as alcohol or cigarettes. This research states that the term ‘food addiction’ is misleading, because it suggests that specific ingredients themselves are addictive.Those on the side of diagnosing food addiction suggest that consuming food triggers pleasurable chemicals in the brainTrusted Source, such as dopamine, that act as a reward. These chemicals can also act as a release from emotional distress.Read more on compulsive sexual behavior, another hotly debated addiction diagnosis.Trigger foodsSome foods with high sugar, fat, or starch content may have close associations with food addiction. These are known as hyperpalatable foods – while they are not inherently addictive, their flavour makes them easy to compulsively eat.However, any foods that a person finds comforting can lead to uncontrollable urges.The Yale Food Addiction Scale identified certain foods that appeared to have close links with food addiction. This is a questionnaire that helps doctors diagnose food addiction. Examples of possible trigger foods include:chipsfriescandychocolatecookieswhite breadpastaice creamHowever, it is worth noting that a person might develop a compulsion to eat any food that brings them comfort.Binge eating disorder includes periods of excessive overeating. SymptomsThe symptoms of food addiction can be physical, emotional, and social. These symptoms include:obsessive food cravingsa preoccupation with obtaining and consuming foodcontinued binge or compulsive eatingcontinued attempts to stop overeating, followed by relapsesa loss of control over the quantity, regularity, and location at which eating occursa negative impact on family life, social interaction, and financesthe need to eat food for emotional releaseeating alone to avoid attentioneating to the point of physical discomfort or painAfter compulsively consuming large quantities of food, a person may also experience negative feelings, such as:shameguiltdiscomfortreduced self-worthFood addiction can also trigger physical responses, including:intensive food restrictioncompulsive exerciseself-induced vomitingTreatmentTreatment for compulsive eating should address the emotional, physical, and psychological needs of the individual.Treatment will focus on breaking the destructive habit of chronic overeating. The goal is to replace dysfunctional eating habits with healthy ones and to address problems, such as depression or anxiety.Treatments that may be effective include:Cognitive behavioral therapy (CBT): This branch of psychotherapy aims to identify and change negative thought patterns, as well as creating new coping mechanisms for food addiction triggers. People can take a course of CBT either individually or in a group session.Medication: A person may take medications to relieve symptoms of depression or anxiety that may underly compulsive eating.Solution-focused therapy: A therapist can help an individual find solutions for specific issues, triggers, and stressors in a person’s life that lead to overeating.Trauma therapy: A psychotherapist helps a person come to terms with the trauma that may have links to trigger compulsive eating.Nutritional counseling and dietary planning: This can help a person develop a healthy approach to food choices and meal planning.', 'What is Food Addiction', '1681865283.jpg', 2, '2023-04-16 11:24:52', '2023-04-18 22:48:03', '1'),
(3, 'AbstractWith the obesity epidemic being largely attributed to overeating, much research has been aimed at understanding the psychological causes of overeating and using this knowledge to develop targeted interventions. Here, we review this literature under a model of food addiction and present evidence according to the fifth edition of the Diagnostic and Statistical Manual (DSM-5) criteria for substance use disorders. We review several innovative treatments related to a food addiction model ranging from cognitive intervention tasks to neuromodulation techniques. We conclude that there is evidence to suggest that, for some individuals, food can induce addictive-type behaviours similar to those seen with other addictive substances. However, with several DSM-5 criteria having limited application to overeating, the term ‘food addiction’ is likely to apply only in a minority of cases. Nevertheless, research investigating the underlying psychological causes of overeating within the context of food addiction has led to some novel and potentially effective interventions. Understanding the similarities and differences between the addictive characteristics of food and illicit substances should prove fruitful in further developing these interventions.Keywords: food addiction, overeating, obesity, impulsivity, reward sensitivity, cognitive training, neuromodulationGo to:1. IntroductionIn 2003, obesity was declared a global epidemic by the World Health Organisation [1], and the prevalence of overweight and obesity in both developed and developing countries continues to increase [2,3]. In 2016, 39% of adults were estimated to be overweight and 13% to be obese [4]. Overweight and obesity present a substantial economic burden; in the UK, the total direct and indirect costs are expected to reach £37.2 billion by 2025 [5]. One of the common explanations for the increase in obesity over recent decades is the environment and, in particular, the availability of highly varied, palatable and fattening foods—which have been considered to be addictive [6,7,8,9]. While many individuals manage to resist these temptations and maintain a healthy weight, obese individuals have been shown to have a preference for such energy-dense foods compared to healthy-weight individuals [10,11,12]. The critical question is why some individuals are able to resist overeating while others cannot; what is the evidence for ‘food addiction’ and how can this be used to inform interventions for overeating.The concept of ‘food addiction’ has been evident in the media and general public for some time and is gaining increasing interest in the scientific literature [13]. There are now numerous reviews discussing the diagnostic, neurobiological and practical aspects of food addiction, with arguments both for and against its utility and validity [14,15,16,17,18,19,20]. This surge of interest comes with the perspective that addiction can be conceptualised as a loss of control over intake for a particular substance or behaviour without the need to focus purely on psychoactive substances [21,22]. The fifth edition of the Diagnostic and Statistical Manual [23] acknowledged this shift in perspective, with the addition of gambling disorder as the first behavioural addiction. Acceptance of this disorder was based on evidence that gambling can produce behavioural symptoms that parallel those of substance addiction and can activate the same neural reward circuits as drugs of abuse [24,25]. There is now a large body of research documenting similar observations for overeating and obesity. Moreover, treatments developed for addictive disorders have also shown some efficacy for the treatment of obesity and overeating. These findings highlight how a model of food addiction may help us to understand elements of overweight/obesity beyond a simple lack of willpower and can also be used to inform effective interventions and policy [26,27,28,29,30].Food addiction has not yet been recognised in the DSM; however, the similarities between some feeding and eating disorders and substance-use disorders (SUDs) have been acknowledged. These similarities include the experience of cravings, reduced control over intake, increased impulsivity and altered reward-sensitivity. Binge eating disorder (BED) and bulimia nervosa (BN) have been proposed as phenotypes that may reflect these similarities to the greatest extent [31,32,33,34]. Both BED and BN are characterised by recurrent episodes of binge eating in which large quantities of food are consumed in a short time accompanied by feelings of a lack of control, despite physical and emotional distress. Reports of food addiction have been shown to be particularly high amongst these individuals [32,35,36]. Food addiction has also been acknowledged with a standardised ‘diagnostic’ tool—the Yale Food Addiction Scale (YFAS) [37,38]. The YFAS is a questionnaire that parallels the diagnostic criteria for SUDs. The scale has so far been shown to exhibit good internal reliability as well as convergent, discriminant and incremental validity [37,38,39,40].In this review, we first discuss the DSM-5 diagnostic criteria for SUDs to summarise evidence for food addiction. These criteria are defined as ‘a cluster of cognitive, behavioural and physiological symptoms’ [23]. More specifically, the following categories are considered: impaired control, social impairment, repeated use despite negative consequences and physiological criteria. However, it should be noted that the physiological criteria of tolerance and withdrawal—for which there is less evidence in relation to food—are not necessary for a diagnosis of SUD. The DSM-5 also states that although changes in neural functioning are a key characteristic of SUDs, the diagnosis is based on a pathological pattern of behaviours. Hence, we discuss the diagnostic criteria initially, followed by a review of neurobiological evidence. We then explore the question of how this information can be, and has been, applied to interventions for overeating.1.1. Impaired ControlTaking larger amounts of the substance for longer periods than intended has been cited as one of the most commonly reported symptoms in overweight/obese and BED individuals [41,42]. Excessive and uncontrolled eating also forms the definition of binge eating in BED [23]. Although bingeing can be a planned behaviour, it has been shown that planned binges still result in a greater intake than initially intended [41]. Binge eating has also been documented in non-clinical samples [43,44]; however, in these individuals, occasions of impaired control are more likely to reflect unintentional snacking and excessive portion sizes [8,41,45].Unsuccessful efforts to restrict food intake are also well documented, with many dieters failing to maintain their diet or even gaining weight in the long term [46,47,48,49,50,51]. In their paper reviewing evidence for refined food addiction (i.e., processed foods with high levels of sugars or sweeteners, refined carbohydrates, fat, salt and caffeine), Ifland et al. [52] report that ‘Every refined food addict reports a series of attempts to cut back on eating. They have used a variety of techniques’ (pg. 521). Curtis and Davis [41] also report similar anecdotes in women with BED who describe avoiding certain trigger foods to control their binges.The third criterion of time spent obtaining, using and recovering from substance use also translates to BED and BN. These individuals may spend a lot of their time thinking about, engaging in and recovering from binge episodes. As mentioned earlier, bingeing is often a planned behaviour which may require a great deal of effort to purchase and store foods ready for a binge episode [41]. In addition, the criteria for BED emphasise the time spent bingeing, with the number of binge episodes per week determining the severity of the disorder [23]. Moreover, these individuals often experience physical and emotional distress following a binge eating episode. Recovery from food consumption has also been reported in self-identified food addicts with references to feeling sleepy or ‘hung-over’ [52,53].Although evidence for food addiction directly related to the DSM-5 diagnostic criteria for impaired control is largely anecdotal, there is a considerable amount of empirical evidence for an association between overeating/obesity and impaired control generally. Two aspects of self-regulatory failure that are particularly pertinent in the case of substance use and overeating are impulsivity and reward sensitivity [54,55,56].1.1.1. ImpulsivityAlthough impulsivity is a multi-faceted construct, it can be defined broadly as the tendency to think and act without sufficient forethought, which often results in behaviour that is discordant with one’s long-term goals. The role of impulsivity in SUDs is well documented [55,57,58,59,60]. Many studies have reported higher impulsivity levels with increasing substance use across a wide range of questionnaires and behavioural tasks, and for a variety of different substances [61,62,63,64,65,66]. For example, Noël et al. [67] performed a series of behavioural tasks assessing the ability to suppress irrelevant responses (response inhibition) and irrelevant information (proactive interference) in a group of detoxified alcohol-dependent individuals and matched healthy controls. They found a statistically significant group difference for all three tests assessing response inhibition but no differences for proactive interference.Impulsivity has also been implicated in overeating and obesity [54,68,69,70,71]. Overweight/obese individuals score higher on self-reported [72,73,74] and behavioural measures of impulsivity [75,76,77], whereas those high in self-control have been shown to be less likely to give in to temptation [78,79,80] and are more likely to maintain a healthy diet and engage in physical exercise [81,82,83] Impulsivity scores have also been shown to predict poor food choices [84] and correlate positively with food consumption [85,86,87]. For example, Guerrieri et al. [87] found that, in a sample of healthy-weight women, those with higher impulsivity scores ate more candy during a ‘bogus’ taste test than those with lower impulsivity scores. Churchill and Jessop [88] also showed a predictive relationship between impulsivity and snacking on high-fat foods over a two-week period. Scores on the YFAS have also been associated with various measures of impulsivity, such as motor and attentional impulsivity, mood-related impulsivity and delay discounting [89,90].1.1.2. Reward SensitivityA heightened general sensitivity to reward has also been linked to both substance use and overeating [69,77,91,92,93]. In the food literature, self-report measures of reward sensitivity have revealed associations with BMI, food craving and preferences for foods high in fat and sugar [93,94,95]. Using two behavioural tasks, Guerrieri et al. [69] measured reward sensitivity and response inhibition in children aged 8–10. They subsequently measured food intake in a bogus taste test when the foods were either varied or monotonous. Their results revealed that reward-sensitive children consumed significantly more calories than non-reward sensitive children only when the food was varied. There was no effect of response inhibition on food intake, nor any interaction with variety; however, unlike reward sensitivity, deficient response inhibition was associated with being overweight. The authors suggested that reward sensitivity may play a causal role in overeating, whereas deficient inhibitory control may be more of a maintaining factor. This fits well with findings from a study demonstrating a role of reward sensitivity in the early onset of heroin use and a role of impulsivity in escalating use [92,96].There is also evidence to suggest that reward sensitivity may decrease with more prolonged or established overeating, with studies showing anhedonia, or hypo-sensitivity to reward, in obese participants [97,98,99,100]. For example, Davis et al. [97] demonstrated that although overweight women were more sensitive to reward than healthy-weight women, those who were obese were significantly less reward sensitive than overweight women. Importantly, the earlier mentioned association between reward sensitivity and increased BMI was found in a sample of mainly healthy-weight women, with only 1% classified as obese [93]. Although there is a great deal of evidence to suggest that sensitivity to reward plays a role in substance abuse and overeating, the causal direction of this relationship remains unclear. On the one hand, increasing reward sensitivity may lead to overeating by increasing motivation towards pleasurable activities, such as consuming energy-dense foods that elicit dopamine and opioid activation. On the other hand, decreased reward sensitivity may cause individuals to seek out rewarding activities as a form of ‘self-medication’ in order to boost dopamine functioning (i.e., addictive behaviour is the result of a ‘reward deficiency syndrome’) [101,102]. These two arguments, and the relevant neuroimaging literature, are discussed further below (see the Neurobiological Similarities section below) and in more detail by Burger and Stice [103].Burger and Stice [103] offer several theories for how these two causal directions combine to explain obesity. They propose that high sensitivity to reward may initially cause individuals to over-consume palatable foods, but this sensitivity is then modified over time as the brain’s reward system adapts and shows divergent changes in food motivation (‘wanting’) versus hedonic pleasure (‘liking’). According to Robinson and Berridge’s [104,105,106] incentive-sensitisation theory, repeated intake results in an increased incentive value for these foods and their associated cues, which may be subjectively experienced as excessive wanting or craving. Moreover, this theory argues that with repeated presentations of palatable foods, the hedonic pleasure derived from consuming the food will decrease due to neural habituation, while the anticipation of reward increases. Hence, a vicious cycle emerges in which the individual will experience less pleasure from the food (‘liking’), but will simultaneously experience an increased desire (‘wanting’) for the food, driving further food seeking and consumption [107,108,109] (see Figure 1). The experience of intense cravings is the third criterion of impaired control and is another symptom of substance addiction that can be readily applied to overeating and obesity.2.2. Neurobiology of Inhibitory ControlDopamine receptor availability in obese individuals has also been shown to correlate positively with metabolism in prefrontal regions involved in inhibitory control (specifically the dorsolateral prefrontal cortex [DLPFC], medial orbitofrontal cortex [mOFC] and anterior cingulate gyrus, as well as the somatosensory cortices) [99]. Similar findings have been observed in healthy-weight participants, who demonstrated a positive correlation between dopamine receptor availability and inhibitory control performance on the stop-signal task [240]. Volkow et al. [99] hypothesised that altered dopamine functioning may play a role in overeating not only through altering the rewarding properties of food but also by reducing inhibitory control. A significant negative correlation between BMI and prefrontal activity has also been reported [75,241,242] along with reduced prefrontal activation following a meal in obese men and women [243,244,245]. Conversely, successful dieting has been positively associated with frontal activation [246,247,248,249].In a study of healthy women, Lawrence et al. [96] reported an association between food cue reactivity in the NAc and later snack consumption [117]. They also found that this reactivity was associated with increased BMI for individuals who reported low self-control. The authors proposed a ‘dual hit’ of increased reward motivation and poor self-control in predicting increased food intake [250]. Similarly, reductions in frontal grey matter volume have also been linked to increased BMI, poor food choices and related deficits in executive functioning [251,252,253,254,255,256,257,258]. These findings are reflective of a growing literature on the cognitive dysfunction associated with drug abuse and obesity, although research indicates that the causal relationship is bidirectional [76,259,260,261,262,263].Although it has been hypothesised that overeating is initially caused by a hyper-responsive reward circuitry and maintained by the subsequent degradation of this system [103], there is also evidence to suggest that some individuals may be genetically vulnerable to an impaired capacity for reward and inhibitory control. Genetics studies have revealed that both drug users and obese individuals have a significantly greater prevalence of the TaqI A1 allele polymorphism which can cause a 30%–40% reduction in striatal D2 receptors [213,264,265,266,267,268,269]. In addition, this polymorphism has been associated with behavioural measures of impulsivity and low reward sensitivity [270,271,272]. It has also been linked to low grey matter volume in the anterior cingulate cortex (ACC) [273], an area which is believed to be involved in executive control and reward expectancy [240,274,275], and has been shown to be active during resistance of cigarette craving [276]. Together these findings demonstrate that overeating and SUDs may share a common neurobiological mechanism involving altered dopamine functioning that subsequently disrupts mechanisms involved in reward sensitivity and inhibitory control.Our review, considering each of the DSM-5 criteria for SUDs in isolation, suggests that there is considerable evidence for food addiction. Whether an individual meets clinical diagnostic criteria under an SUD model, and the severity of the disorder, however, is dependent on an individual presenting a number of symptoms (mild: two to three symptoms; moderate: four to five symptoms; severe: six or more symptoms). Studies utilising the YFAS (which uses diagnostic criteria for SUDs) have certainly suggested that a substantial proportion of the general population meet the diagnostic cut-off for food addiction (15%–20%), with approximately 11% of the population being classified as ‘severe’ [38,276]. The prevalence of food addiction in those with BED and BN has been reported as much higher, with estimates of 92% for BED and 96%–100% for BN [32,277,278]. Acknowledging the potential prevalence of food addiction, we next discuss a range of treatments for overeating that have been informed by the similarities between SUDs and overeating.Go to:3. Treatment ImplicationsOne of the greatest potential advantages of identifying the similarities between substance addictions and overeating is the development of effective interventions. The standard approach to weight loss, involving maintaining a healthy diet and physical exercise, is often associated with poor adherence rates and overall weight gain [46,47,48,49,50,51,279]. One possible reason for the ineffectiveness of dieting is that it is treating the outcome of overeating and not the underlying cause. Approaches that target increased impulsivity and reduced self-control may have more success. For example, Hall, Fong, Epp and Elias [280] showed that executive function on the go/no-go task (a measure of response inhibition) predicted unique variance for dietary behaviour and physical exercise, and also moderated the association between intentions and behaviour [117,281]. This suggests that individuals who are more capable of controlling their impulsive actions are more likely to successfully meet their goals. This also implies that techniques to improve such abilities may prove to be effective tools for aiding weight loss.', 'Food Addiction', '1687448345.jpg', 2, '2023-04-16 11:26:12', '2023-06-22 12:39:05', '1'),
(4, 'How to Overcome Food AddictionWhat it isEffects on the brainSymptomsSeriousnessAvoiding junk foodFirst stepsGetting helpBottom lineThe effects of certain foods on the brain make it hard for some people to avoid them.Food addiction operates similarly to other addictions, which explains why some people can’t control themselves around certain foods — no matter how hard they try.Despite not wanting to, they may repeatedly find themselves eating large amounts of unhealthy foods — knowing that doing so may cause harm.This article examines food addiction and provides tips to overcome it.What is food addiction?Food addiction is an addiction to junk food and comparable to drug addiction.It’s a relatively new — and controversial — term, and high quality statistics on its prevalence are lacking (1Trusted Source).Food addiction is similar to several other disorders, including binge eating disorder, bulimia, compulsive overeating, and other feeding and eating disorders.SUMMARYFood addiction is a highly controversial concept, though most studies suggest it exists. It works similarly to drug addiction.Effects on the brainFood addiction involves the same areas of the brain as drug addiction. Also, the same neurotransmitters are involved, and many of the symptoms are identical (2Trusted Source).Processed junk foods have a powerful effect on the reward centers of the brain. These effects are caused by brain neurotransmitters like dopamine (3).The most problematic foods include typical junk foods like candy, sugary soda, and high fat fried foods.Food addiction is not caused by a lack of willpower but believed to be caused by a dopamine signal that affects the biochemistry of the brain (4Trusted Source).SUMMARYFood addiction is thought to involve the same neurotransmitters and areas of the brain as drug addiction.8 symptoms of food addictionThere is no blood test to diagnose food addiction. As with other addictions, it’s based on behavioral symptoms.Here are 8 common symptoms:frequent cravings for certain foods, despite feeling full and having just finished a nutritious mealstarting to eat a craved food and often eating much more than intendedeating a craved food and sometimes eating to the point of feeling excessively stuffedoften feeling guilty after eating particular foods — yet eating them again soon aftersometimes making excuses about why responding to a food craving is a good idearepeatedly — but unsuccessfully — trying to quit eating certain foods, or setting rules for when eating them is allowed, such as at cheat meals or on certain daysoften hiding the consumption of unhealthy foods from othersfeeling unable to control the consumption of unhealthy foods — despite knowing that they cause physical harm or weight gainIf more than four to five of the symptoms on this list apply, it could mean there’s a deeper issue. If six or more apply, then it’s likely a food addiction.SUMMARYThe main symptoms of food addiction include craving and binging on unhealthy foods without being hungry and an inability to resist the urge to eat these foods.It’s a serious problemThough the term addiction is often thrown around lightly, having a true addiction is a serious condition that typically requires treatment to overcome.The symptoms and thought processes associated with food addiction are similar to those of drug abuse. It’s just a different substance, and the social consequences may be less severe.Food addiction can cause physical harm and lead to chronic health conditions like obesity and type 2 diabetes (5Trusted Source).In addition, it may negatively impact a person’s self-esteem and self-image, making them unhappy with their body.As with other addictions, food addiction may take an emotional toll and increase a person’s risk of premature death.SUMMARYFood addiction increases the risk of obesity and type 2 diabetes. Excessive weight may also affect a person’s self-esteem.How to know whether avoiding junk food is worth the sacrificeCompletely avoiding junk foods may seem impossible. They’re everywhere and a major part of modern culture.However, in some cases, entirely abstaining from certain trigger foods can become necessary.Once the firm decision to never eat these foods again is made, avoiding them may become easier, as the need to justify eating — or not eating — them is eliminated. Cravings may also disappear or decrease significantly.Consider writing a list of pros and cons to think through the decision.Pros. These may include losing weight, living longer, having more energy, and feeling better every day.Cons. These may include not being able to eat ice cream with family, no cookies during the holiday season, and having to explain food choics.Write everything down — no matter how peculiar or vain it may seem. Then compare the two lists and ask if it’s worth it.If the answer is a resounding “yes,” be assured that it’s the right decision.Also, keep in mind that many of the social dilemmas that may show up in the con list can often easily be solved.SUMMARYTo overcome food addiction, a person should be sure that eliminating certain foods is the right thing to do. If there’s uncertainty, writing down the pros and cons may help make the decision.First steps in overcoming food addictionA few things can help prepare for giving up junk foods and make the transition easier:Trigger foods. Write down a list of the foods that cause cravings and/or binges. These are the trigger foods to avoid completely.Fast food places. Make a list of fast food places that serve healthy foods and note their healthy options. This may prevent a relapse when hungry and not in the mood to cook.What to eat. Think about what foods to eat — preferably healthy foods that are liked and already eaten regularly.Pros and cons. Consider making several copies of the pro-and-con list. Keep a copy in the kitchen, glove compartment, and purse or wallet.Additionally, don’t go on a diet. Put weight loss on hold for at least 1–3 months.Overcoming food addiction is difficult enough. Adding hunger and restrictions to the mix is likely to make things harder.After taking these preparatory steps, set a date in the near future — like the coming weekend — from which point onward the addictive trigger foods won’t be touched again.SUMMARYTo overcome food addiction, it’s important to plan. Make a list of trigger foods and know what is going to be eaten instead.Consider seeking helpMost people with addiction attempt to quit several times before they succeed in the long run.While it’s possible to overcome addiction without help — even if it takes several tries — it can often be beneficial to seek help.Many health professionals and support groups can aid in overcoming your addiction.Finding a psychologist or psychiatrist who has experience in dealing with food addiction can provide one-on-one support, but there are several free group options available as well.These include 12-step programs like Overeaters Anonymous (OA), GreySheeters Anonymous (GSA), Food Addicts Anonymous (FAA), and Food Addicts in Recovery Anonymous (FA).These groups meet regularly — some even via video chat — and can offer the support needed to overcome addiction.SUMMARYConsider seeking help for food addiction. Try support groups like Overeaters Anonymous or book an appointment with a psychologist or psychiatrist who specializes in food addiction.The bottom lineFood addiction is a problem that rarely resolves on its own. Unless a conscious decision to deal with it is made, chances are it will worsen over time.The first steps to overcoming the addiction include listing the pros and cons of quitting trigger foods, finding healthy food alternatives, and setting a fixed date to start the journey toward health.Consider seeking help from a health professional or free support group. Always remember that you’re not alone.Editor’s note: This piece was originally reported on July 30, 2017. Its current publication date reflects an update, which includes a medical review by Timothy J. Legg, PhD, PsyD.', 'recovering from junk food', '1687448368.jpg', 2, '2023-04-16 11:27:33', '2023-06-22 12:39:28', '1'),
(5, 'Tips for Overcoming Food AddictionYou don’t have to look very far to find the link between food addictions and rising obesity rates. According to the Centers for Disease Control & Prevention, as much as 35.7 percent of Americans were diagnosed as obese in 2006. With the increasing amount of preservatives and additives used in food processing plants, more and more people are finding it hard to say “no” to extra helpings when they know they should.Weight-wise, once a person reaches the point where enough is enough, the process of overcoming food addiction begins. Tips for overcoming food addiction include identifying destructive eating patterns, making healthy food choices and learning how to deal with food cravings.Making Good Food ChoicesFor some people, sweets and salty food may seem especially tasty. For others, it’s the tasty, high-calorie foods that hold an appeal. While taste definitely plays a pivotal role in whether someone likes or craves a certain type of food, other factors may also be driving an addiction.The after-effects from a big, heavy Thanksgiving dinner offers a prime example of how food can affect a person’s body by triggering cravings and effecting chemical changes. After such a meal, some people become sleepy or sluggish. Others may start to feel irritable or depressed. These types of effects only happen when chemical changes in the brain take place.More oftentimes than not, it’s the high-calorie, low nutrient foods that trigger an addiction response and make a person want more. So, overcoming food addiction starts with learning to make good food choices. By making good food choices on a daily basis, over time, the body can flush out the “bad food” residues. Like leftover drugs residues in the body, bad food residues can trigger cravings for more of the same. Once the body is cleaned-out, the source of the cravings is gone.Identify Trigger FoodsKnowing the types of foods that trigger cravings can help you develop strategies for avoiding these foods and overcoming food addiction. As food remains a daily living requirement and always accessible, going cold turkey on trigger foods may be more than a person can handle when going it alone. The potential for overwhelming cravings can make relapse that much easier, leaving a person feeling depressed and eating even larger portions than before.By gradually reducing trigger foods and replacing them with healthy food choices like fruits and veggies, the process of overcoming food addiction becomes less stressful, both physically and psychologically. Over time, the body will come to expect smaller and smaller portions of the trigger foods, which is the overall goal when overcoming food addiction.Countering Food CravingsIn order to counter food cravings, it helps to have a record of the actual craving patterns that develop from day-to-day. By keeping a food diary, you can keep track the times of day cravings occur and the types of foods craved. In this way, overcoming food addiction becomes a matter of having substitute (healthy) foods ready when the vulnerable times of day hit.', 'advises of how to reduce eating junk food', '1687017379.jpg', 2, '2023-04-16 11:31:04', '2023-06-17 12:56:19', '1'),
(6, 'What Is Plastic Surgery Addiction?In today’s society, it’s pretty normal for most people to have a few things that they don’t like or would change about their appearance. For many this means seeking out a surgical procedure such as liposuction, rhinoplasty, or breast augmentation. However, there are some individuals that no amount of cosmetic surgery will satisfy or equate to the picture of perfection that they have in their heads; this is when an addiction can develop. Plastic surgery addiction is a behavioral addiction characterized by psychological compulsions to continuously alter one’s appearance with cosmetic surgery.There is a common belief that people who routinely get plastic surgery are self-absorbed; however, this is a misconception as many people who develop an addiction to cosmetic surgery struggle with severe and debilitating insecurity. They are preoccupied with how they look, but in a negative way – seeing themselves to be ugly, malformed, misshapen, or hideous. This intense insecurity is often caused by body dysmorphic disorderWhat Is Body Dysmorphic Disorder?Many researchers have found that the majority of people who are addicted to plastic surgery also suffer from co-occurring BDD. Body dysmorphic disorder is a rare psychiatric condition that is characterized by persistent and intrusive preoccupations with an imagined or small defect in one’s appearance. While the severity of the disorder varies, it causes many sufferers real emotional distress and can have a devastating impact on their lives. The level of distress an individual with BDD experiences regarding his or her appearance is vastly out of proportion to any real physical “defect” on the face or body.Body dysmorphic disorder only affects about 1% to 2% of the general population but has been found to be up to 15 times more prevalent in those seeking plastic surgery. People struggling with body dysmorphic disorder obsessively think about their appearances, focusing only on their perceived negative features. Patients suffering from the disorder also engage in obsessive-compulsive behaviors, including: mirror gazing, comparing personal features, skin picking, reassurance seeking, and even “self-surgery” practices.Many people that suffer from BDD turn to plastic surgery as they believe that surgically altering their appearances will remedy their negative perceptions of self. However, surgery rarely resolves symptoms of the disorder as it does not solve the underlying psychological issues. Plastic surgery actually leaves the person off worse than before, as patients with body dysmorphic disorder often possess unrealistic expectations about the outcomes and suffer the pain and inconvenience of surgery without receiving the results they want. These people will then continue to go under the knife and spend thousands of dollars on something that fails to make them feel any better.The Dangers Of Plastic SurgeryNumerous cosmetic procedures pose multiple serious health threats to the body, such as excessive scar tissues, blood clots, infections, collapsed muscles, and cardiac arrest due to anesthesia. Because of these risks, plastic surgeons perform careful assessments to determine if undergoing surgery is safe or even possible for a patient. It is not surprising then that many people who are addicted to plastic surgery are often turned down by their surgeons. When refused the procedures that they are seeking, many take matters into their own hands and find less qualified doctors that will consent to operating or even perform surgery on themselves.I had somebody who would buy derma rollers online. It looks like a small rolling pin with needles on it that you use on your face. If you go somewhere for a professional to do it, there’s a six week wait between treatments because the skin needs to heal. But he just did it to himself repeatedly and really damaged his face. And then all he can see is the scars and scabs and bleeding all over his face because he tried to correct it too many times. And the cycle continues.- Dr. Annemarie O\'Connor, Clinical PsychologistPlastic Surgery Addiction And Opioid AbuseIn addition to the physical and mental health concerns associated with plastic surgery addiction, it has also been connected to Opioid abuse. Cosmetic procedures are often debilitating and Opioid painkillers are commonly prescribed for postoperative pain and discomfort. Depending on the surgery, the wounds can take weeks or even months to heal, which means prolonged use of the highly addictive drugs. Those suffering from plastic surgery addiction are at an additional heightened risk for Opioid abuse due to their poor image and low self-esteem. Thus, Opioid medications become both a physical and emotional pain reliever for the patient, prompting the development of another addiction.Treatment For Plastic Surgery AddictionAs plastic surgery becomes more common and affordable, rates of plastic surgery addiction are bound to increase as well. Fortunately, cognitive behavioral therapy has proven to be very effective in treating both plastic surgery addiction and body dysmorphic disorder. If you believe that you or someone you know may be suffering from a plastic surgery addiction, know that there is treatment options available.', 'introduction to plastic surgery', '1681865447.jpg', 3, '2023-04-16 11:44:54', '2023-04-18 22:50:47', '1');
INSERT INTO `articles` (`id`, `content`, `desc`, `img`, `cate_id`, `created_at`, `updated_at`, `user_type`) VALUES
(7, 'Plastic surgery is the remodeling, repairing, or restoring of the appearance and sometimes the function of body parts. It includes reconstructive surgery such as skin grafts and repair of congenital defects as well as cosmetic surgery.Not all plastic surgery is cosmetic surgery. Cosmetic surgery is a type of plastic surgery performed for the sake of aesthetics rather than health. While there are some exceptions to that, such as the fixing of a cleft palate, usually cosmetic surgery is a choice a person makes when they want a part of their body to look different.There\'s no contesting that plastic surgery can improve quality of life; studies have shown that cosmetic medical procedures have a positive impact on the emotional well-being of recipients.1 However, it can be a slippery slope, and a person can become addicted to it.Ahead, learn what plastic surgery addiction is, the signs of it, how to prevent it, and what to do if the addiction has passed the point of prevention.What Is Plastic Surgery Addiction?Plastic surgery addiction is defined2as a behavioral disorder that leads a person to want to change their appearance via plastic surgery on an ongoing basis.Like all forms of addiction, plastic surgery addiction may appear to first be something perfectly healthy. It can begin with just one surgery that a person has a positive experience from. That surgery can increase a person\'s sense of well-being, and it can also make them view their body differently.Once someone has experienced the positive effects of plastic surgery firsthand, they might start thinking about what they want to have altered next. They might schedule more surgeries right away, or take time to.There is no hard and fast rule about how it progresses. The basic idea is that, at some point, the positive outcome is no longer the focus. Instead, a person is focused on what to do next. This is similar to any other addiction: plastic surgery becomes something unending, with a constant need for more.Signs of Plastic Surgery AddictionIf you or someone you know may be dealing with plastic surgery addiction, these are the signs to look out for.Multiple Procedures At Once or in a RowSomeone who has become addicted to plastic surgery might have a laundry list of procedures they want to get done. They may schedule many at once, or one at a time as often as possible on an ongoing basis.This is different from going under the knife once to address multiple issues and then being done; it is more about seeing plastic surgery as a journey you\'re always on, with a never-ending list of things to get done.Going to Different SurgeonsSurgeons can, and should, quickly become hesitant to perform too many surgeries on one person. To avoid this, someone addicted to plastic surgery might go to several different surgeons. They could do that in rotation, or they could move on to a new surgeon when a previous one refuses to do any more work on them.If you think of your primary care physician, chances are you have at least a casual relationship with them. The longer you see them, the more trust you place in them with your health. So, when someone is in a space where they are seeing multiple different practitioners who do the same work, it\'s may be a sign that something is wrong.Constant Fixation on the Next SurgerySomeone who is addicted to plastic surgery is likely to be unsatisfied with a new procedure. Someone who isn\'t addicted to plastic surgery is more likely to get something done and be happy, whereas the person with a plastic surgery addiction sees the surgeries as an ongoing affair.They may express no happiness at all about new procedures, and instead, be purely focused on what they\'ll have done next.Thinking of Body Parts as in Need of FixingBodies are not inherently perfect, any more than human behavior is. Most of us are full of lumps and bumps, and as we age, those amplify—and gravity drags them down, too. But just because your body doesn\'t look like a magazine cover doesn\'t mean there is anything wrong with it!It\'s emotionally healthy to accept our bodies as they are. Changing something via a procedure to feel better about yourself isn\'t a problem, but seeing your physical self as something that needs professional fixing is.When you view your body through the lens of how it looks compared to a \"perfect\" version, you can easily lose sight of your own uniqueness and instead think you need to be fixed.Unrealistic ExpectationsSome people use plastic surgery as a quest to look like a celebrity, or a Barbie doll, or someone else they know. They may be highly disappointed when surgery is unable to make them look more like someone else.Even if a person isn\'t trying to look like someone specific, once addicted to plastic surgery they still might lose sight of what it can and cannot actually accomplish.Rather than be satisfied with procedures, they may feel the surgeon didn\'t do enough to get them the results they wanted. Symptoms of AddictionThe Role of Body DysmorphiaStudies have shown that body dysmorphia is usually the root cause of plastic surgery addiction.3 2.2% of men and 2.5% of women are believed to suffer from body dysmorphic disorder (BDD).BDD is a behavioral issue that is about focusing on perceived physical flaws. People with BDD may spend a lot of time scrutinizing their bodies and may see them completely differently than others do.Often, they think they have a major problem in need of fixing that no one else can even recognize. BDD can be diagnosed by a mental health practitioner and can be treated with therapy and/or medication. What Scientists Have to Say about Facial BeautyHow to Prevent Plastic Surgery AddictionFor anyone who has had cosmetic surgery procedures and wants to make sure they don\'t develop an addiction, it\'s important to first discern whether or not you have BDD. If you do, the best thing to do is seek help for it.If you do not have BDD but you find yourself wanting more surgeries after having had one, talking to a therapist is still an excellent way to go. They can steer you onto a path where you can be sure to not fall down the rabbit hole of endless cosmetic surgeries.You can also reach out to friends and loved ones for the sake of being open with your emotions. They can also help keep you accountable.How to Deal With Plastic Surgery AddictionThe first way to know for sure that you are dealing with plastic surgery addiction is if your surgeon doesn\'t want to perform any more procedures on you.Another way to know is if your loved ones express concern over your habit of having cosmetic surgery. Lastly, you might just know on your own that things have gotten out of hand.If you become aware that you have plastic surgery addiction, you\'ll want to seek professional treatment. Finding a therapist that deals with this might seem like a challenge, but it doesn\'t have to be: because BDD is the root cause of plastic surgery addiction. So, you need to find a therapist who works with that.BDD is a recognized behavioral disorder in the DSM 5, and there is no shortage of psychologists, psychiatrists, and marriage and family therapists who know how to treat it. Ideally, therapy will help you with your BDD, and from there, you won\'t feel the need to have more surgeries.A Word From VerywellPlastic surgery addiction is very different from simply having a cosmetic procedure done and moving on with your life. Now that you know the signs of it, you\'re in a more empowered place to handle it should it arise in your life, whether on your own wellness journey or that of someone you care about.', 'plastic surgery', '1681865464.jpg', 3, '2023-04-16 11:47:06', '2023-04-18 22:51:04', '1'),
(8, 'Plastic Surgery Addiction: Is It Dangerous?They are interviewed on talk shows like Oprah and Dr. Phil – plastic surgery addicts. People, often women, who think that just one more surgery, just one more fix, will make them perfect. Often, these plastic surgery addicts have a perfect image in mind that they want to attain, whether it be a celebrity that they are trying to emulate, or their ideal picture of what they should look like. What causes someone to be addicted to plastic surgery? Is plastic surgery a bad thing?First, plastic surgery is not always a bad thing. Like anything in life, the benefits of plastic surgery can be over done. Children, for example, who are born with severe deformities, can benefit from plastic surgery giving them a new lease on a social life. Whether we like it or not, our society is a visually oriented society and those who have severe deformities are often shunned. Whether or not this should be, it is and plastic surgery benefits people in these situations.But what about normal, even beautiful, looking people who feel the need to have plastic surgery? The fact is that two thirds of the first time plastic surgery patients come back for more surgery. Once they have overcome the fear and trepidation surrounding having the first surgery, many come back for a second round, trying to attain the perfect look.One of the reasons for this addiction might be the unattainable perfection that is put forth as beauty in today’s media. Today’s society is highly visual and the people who are seen on television and fashion runways are unattainably beautiful. So the average person turns to plastic surgery to try to attain this perfection.Plastic surgery addiction often stems from a condition called body dysmorphic disorder. This is a disorder that causes a person to consider themselves hideous, not matter how attractive they really are. They feel that if they are not happy, then they must not be beautiful and in order to be happy, they must become beautiful. The problem is that the lack of happiness does not stem from their physical appearance. Once people with this condition turn to plastic surgery, they have to go back for more, because the change in their appearance does not bring the desired effect on their happiness.If you suspect someone might be addicted to plastic surgery, there are a few things you can look for to determine if the addiction is true. Someone who seeks multiple plastic surgeries, particularly on the same or similar areas of the body, are often addicts. Also, those who have body dysmorphic disorder, which often leads to cosmetic surgery addiction, are often obsessive about checking their appearance. They also might be obsessive about the looks of a favorite celebrity or two. If you notice these signs in someone you love, seek professional counseling, because the problem goes far deeper than the appearance on the outside. Body dysmorphic disorder and plastic surgery addiction are serious and potentially devastating, psychological problems. Take them seriously and get help for the one you care about!', 'Prof opinion', '1681865480.jpg', 3, '2023-04-16 11:52:04', '2023-04-18 22:51:20', '1'),
(9, 'Plastic surgery is a life-altering event for most people. Even though you’re looking forward to the great results that will follow, it’s only natural to feel a bit anxious. There are several effective ways, however, to overcome your fears of plastic surgery.1. Get Information From Reputable SourcesThe first step is to get as much information as you can when beginning the process. The U.S. National Library of Medicine states that getting information as early as possible and discussing your concerns with others is a good way of alleviating anxiety. Make sure your questions are specific to the procedure you are going to have. Whether you’re searching the internet or consulting with physicians, make sure the sources you’re seeking out are reputable.2. Choose a Board-Certified Plastic SurgeonChoosing a qualified surgeon is one of the most important aspects of any type of plastic surgery. Many times when surgical results are less than desirable, it’s because the surgeon was not qualified in the area of practice and wasn’t board-certified. Check the credentials of any surgeons you are consulting with and view any of their previous work. Most surgeons will have a gallery of before and after photos on their website featuring areas of specialization.3. Choose a Surgeon Specifically in Your Area of SurgeryWhether you’re having breast augmentation, liposuction or a facial procedure, it’s important to choose a plastic surgeon who specializes in this particular area. Some surgeons may specialize in just one area, such as facial procedures, while others have experience in a variety of areas. According to the American Board of Cosmetic Surgery, choosing an experienced surgeon in the procedure you want done is crucial to getting the desired results.4. Discuss Your Goals During the ConsultationYou should come to the initial consultation prepared with a list of questions. It’s important to look at and study several of the surgeon’s before and after photos to get acquainted with that surgeon’s style of work. It’s often recommended to bring along another individual for the consultation. It can help calm your nerves to have a trusted friend or spouse along with you. Another person will be able to remember important information as well as give valuable feedback regarding your options.5. Find Out How Soon You Can Resume Normal ActivityKnowing how soon you’ll be able to go back to work, start exercising and resume all normal activities will help you understand more specifically what to expect from the procedure. Make sure you ask questions that are specific to your lifestyle and the types of activities you engage in on a regular basis. Once these questions are answered, it’s necessary to start planning your aftercare.6. Plan Your AftercareKnowing you have your recovery planned after the surgery can help relieve anxiety. Smart Beauty Guide points out that you’ll need a trusted adult to drive you home from the procedure and stay with you for approximately 24 hours. Plan ahead for any childcare or work-related needs. You may want to consider bringing the person who will be assisting with your aftercare to the consultations.7. Stay Focused on the OutcomeStaying focused on the end results will help you take your mind off of your fears. You may be buying new clothes or engaging in new activities after your plastic surgery is completed. Looking forward to the way you’ll look and feel after the procedure is a way to stay positive and calm.Whether you want to have breast implants, a facial procedure or a mommy makeover, it’s important to start the process by asking plenty of questions and finding a board-certified plastic surgeon. Once you’re past this stage, discussing your goals, planning for your aftercare and focusing on the end results will help alleviate your anxiety.Schedule', '7 Tips for Overcoming Your Fear of Plastic Surgery', '1681865497.jpg', 3, '2023-04-16 11:52:59', '2023-04-18 22:51:37', '1'),
(10, 'German psychiatrist Emil Kraepelin first defined “shopping addiction” in the early 1900s, per a 2012 review (PDF). He dubbed this disorder as “oniomania,” from the Greek words onios, (meaning “for sale”) and mania (meaning “madness”). It was defined as a type of impulsive behavior similar to kleptomania. Since then, people have used “shopping addiction” interchangeably with related terms such as “compulsive shopping,” “compulsive buying,” and “uncontrolled buying” to describe this behavioral disorder.Problematic shopping addiction or compulsive buying, for example, is when a person continues to buy new things, regardless of whether they can afford them, says Pareen Sehat, a registered clinical counselor and clinical director at Well Beings Counselling in Vancouver, British Columbia, Canada. “They may face financial difficulties, but these negative effects still don’t stop them from shopping.”Experts point out that the emotions experienced during compulsive buying — the urge to buy, the loss of control, and subsequent short-term positive feelings — are similar to those of a drug addiction. “The individual with a shopping addiction experiences the same rush or ‘high’ from buying things as someone who abuses drugs,” explains Holly Schiff, PsyD, a licensed clinical psychologist for Jewish Family Services of Greenwich in Connecticut. “The brain then associates shopping with this pleasure and the person wants to try and recreate it again and again.”', 'What Is Shopping Addiction', '1685311961.png', 4, '2023-04-16 11:54:44', '2023-05-28 20:12:41', '1'),
(11, 'Shopping addiction involves a combination of compulsive, or repetitive, and impulsive, or spontaneous, behaviors. According the 2012 review, the following can be signs or symptoms of shopping addiction:A preoccupation with shopping or spending moneyIntrusive thoughts and urges before the shopping processBuying items you can’t afford, or buying items you don’t really needVariations in mood during the shopping process, such as feeling relieved after spending money, but then feeling guilt or frustration later onFinancial, school, or work problems as a result of spending too much money, as well as too much time dedicated to shopping behaviorsStrained interpersonal and family relationshipsThe inability to stop compulsive shopping behaviors, even if the affected person knows that it has negative effects on their lifeShopping secretly (particularly online) can be another indicator of shopping addiction, as people conceal their purchases out of guilt, says Schiff.Other research has noted that compulsive behaviors seen in shopping addiction are similar to those seen in other additions, including gambling disorders and sexual addictions.', 'Signs and Symptoms of Shopping Addiction', '1685311982.png', 4, '2023-04-16 11:55:50', '2023-05-28 20:13:02', '1'),
(12, '“Stress and anxiety are the most significant underlying causes of shopping addiction,” adds Sehat. Many people turn to gratifying behaviors as coping mechanisms, she says. “The endorphins released make the individual feel happy and less stressed.”The aforementioned 2021 statement from the APA suggested that there’s evidence that social isolation and stress may increase the risk of developing a shopping addiction. These dynamics could have been at play while many people spent more time at home, carrying extra stressors, and in isolation during the COVID-19 pandemic — and could have plausibly caused an increase in these types of behaviors. The authors of the paper noted, however, that this is just a theory, and currently there’s no hard evidence to say one way or the other that this happened.Certain environmental risk factors have also been found to put people at a higher risk of developing shopping addiction. For example, having a higher income or having credit cards may make compulsive buying more accessible. Changes in your personal environment, such as a divorce, or moving away from your loved ones, could also influence emotionally driven compulsive buying, as some people report shopping to alleviate feelings of loneliness, helplessness, or guilt.The 2012 review has also suggested that shopping addiction may coincide with mental health conditions involving impulsivity and compulsiveness, including obsessive-compulsive disorder (OCD), personality disorders, anxiety disorders, and binge-eating disorder. It may also be linked with affective disorders, such as depression.Other research noted that shopping addiction tends to run in families, particularly families living with mood, anxiety, or substance use disorders. But having any of the above mental health conditions doesn’t mean you will automatically develop a shopping addiction, and vice-versa.', 'Shopping Addiction: What Causes It', '1685312012.png', 4, '2023-04-16 11:57:43', '2023-05-28 20:13:32', '1'),
(13, 'What Are the Signs of a ShopaholicIn some cases, it may be difficult to tell if you are, or a loved one is, a shopaholic. Many people adore shopping, and many people also spend too much money while engaging in this activity. It is important to note that going a shopping spree once in a while does not mean you are a shopping addict. However, there are several signs and symptoms shopping addicts display that you may want to look for.                                                                                        Emotional Symptoms of a Shopping AddictionLike all addicts, shopping addicts may try to hide their addiction, and if a loved one is addicted to shopping, they may try to hide it from you. If you hide credit card bills, shopping bags or receipts, you may be a shopaholic. In some cases, shopaholics may try to hide their addiction by lying about just one element of it. For instance, a person may admit they went shopping, but they may lie about how much they spent.Some of the other emotional symptoms you may notice from a shopaholic include the following:Spending more than they can affordShopping as a reaction to feeling angry or depressedShopping as a way to feel less guilty about a previous shopping spreeHarming relationships due to spending or shopping too muchLosing control of the shopping behavior                 Short-Term and Long-Term Effects of a Shopping AddictionThe short-term effects of a shopping addiction may feel positive. In many cases, you may feel happy after completing a shopping trip. However, these feelings are often mixed with anxiety or guilt, and in most cases, the guilt or anxiety may propel you back to the store for even more shopping.The long-term effects of a shopping addiction can vary in intensity and scope. Many shopping addicts face financial problems, and they may become overwhelmed with debt. In some cases, they may simply max out their credit cards, but in other cases, they may take out a second mortgage on their home or charge purchases to their business credit card. If you are addicted to shopping, your personal relationships may also suffer. You may end up getting a divorce or distancing yourself from your parents, children or other loved ones.                                    Is There a Test or Self-Assessment I Can DoIf you are still trying to figure out whether or not you are a shopaholic, Shopaholics Anonymous suggests that you ask yourself the following questions. If you answer “yes” to many of these questions, you may have an addiction. The questions are:Do you shop when you feel angry or disappointed?Has overspending created problems in your life?Do you have conflicts with loved ones about your need to shop?While shopping, do you feel euphoric rushes or anxiety?After shopping, do you feel like you have just finished doing something wild or dangerous?After shopping, do you ever feel guilty or embarrassed about what you have done?Do you frequently buy things that you never end up using or wearing?Do you think about money almost all the time?                                                                 Behavioural manifestationThere are three kinds of behavioural manifestations of shopping addiction, with different repercussions. These can be displayed together or independently and in more or less intense ways. Nevertheless, they are closely related and appear joined in people who seriously suffer from this disorder.First is the attraction towards the consumer stimulus, which is the addiction to purchasing as a leisure activity. This is about the uncontrolled and excessive draw to use shopping as a leisure activity, usually in an exclusive and overwhelming way. While activities such as window-shopping, visiting shops or spending time in commercial centres is a common and socially accepted desire activity, an addict is differentiated as one in whom this excessive attraction to purchase interferes with the normal development of life and damages their relationships with others, becoming an obsessive and uncontrolled activity.[citation needed]Huge malls become places to stay and ramble, show the use of shopping as a leisure activity.Although shopping addiction and compulsive purchase are conceptually different, they are interrelated and both are manifestations of the same problem: the lack of self-control when buying and to restrain impulses. Shopping addiction is understood as the eagerness for constantly making new purchases of unnecessary or superfluous things. The concept of compulsive purchase is related to the psychological process which causes many people not to be able to control their impulses and wishes of buying, and subjects them to reflexion and evaluation before purchasing. A basic behavioural characteristic of people who have serious problems of consumer addiction is that their purchases are unnecessary and unsatisfactory. Addicts may feel pleasure or relief when they give in to the shopping wish, but regret it afterwards. In cases of people with severe problems of shopping addiction, this remorse can lead to very deep feelings of blame and discomfort.Lack of economic self-control: this is the serious and permanent inability to adjust the habits of spending to the economic means of the individual. This is not about one\'s ordinary or unexpected spending making life difficult, but is an absolute inability to control the personal or family income in a rational way, and to discipline their buying, no matter how superfluous it is. A manifestation of this lack of control is usually the excessive use of indebtedness The final result is the active or “guilty” over-indebtedness; this is derived from the improper behaviour of the consumer.                                                           Impact on the general populationThe rate of people who have problems of shopping addiction is a very controversial matter, because the dividing line between pathological behaviours and those behaviours which, even if excessive, are socially accepted, is very difficult to determine. However, shopping addiction and other manifestations of the lack of self-control on spending are widespread problems which are constantly expanding. Studies using samples of the general population show that between 8% and 16% of the people have problems with excessive or uncontrolled purchases. Clinical studies give much lower figures, however, between 2% and 5%.[8] According to the European Report on the programme for the prevention and treatment of personal problems related to consumer addiction, personal purchasing habits and over-indebtedness, 3% of European adults and 8% of European young people have a level of shopping addiction which could be considered as pathologic, that is, which seriously affects the life of the people who suffer from this.[9] Other estimates for the prevalence of compulsive buying range from a low of 2 percent to 12 percent or more (in the U.S. population.[10]Most of people who have these problems neither receive nor ask for treatment. Those that ask for help only do it after years of suffering, when the addiction has caused very serious economic repercussion and has harmed the relationship with their family and social environment. For this reason and due to the lack of social consciousness about this problem, the unrecorded figure of people who suffer from these problems is very high. In addition to the severe cases of shopping addiction, an important part of consumers (between 30% and 50% of the population) have deficiencies with spending self-control or excessive purchases. According to the European Report, 33% of European adults and 46% of the European young people have minor or moderate problems with shopping addiction or lack of economic self-control.                                                                          Relationships with other disordersThe relationship of shopping addiction with other psychological disorders – especially with those regarding depression or anxiety - has been studied. This addiction has also been related with low self-esteem and with personality features such as impulsivity, materialism and hedonism.Depression problems are the most frequent consequence in the most serious cases of shopping addiction. This is due to the fact that many consumers use shopping as a means to compensate or to face depressive states. Edwards (1992) in a research to study the influence of some personal variables in two groups, one of shopping addicts and another of non-addict consumers, came to the conclusion that depression is a trigger for shopping addiction problems.[citation needed] In agreement with this data, other researchers have pointed out the high incidence rate of depressive disorders among shopping addicts: Mc.Elloy (1994) placed at 25% the rate of addicts with depressive problems, Lejoyeux (1998) at 61%, and Black, Montaban and Gabel (1997) at 60%.[12] More recent research shows that shopping addicts usually have feelings of leading an unsatisfactory and listless life, without any hope or excitement. In these cases, by means of purchase, the addicts seek for a way of escape, a satisfaction, even if momentary to compensate and to bear the depressive feelings.[13]Cole (1995) carried out research with a sample of 420 people and come to the conclusion that anxiety has an essential role in shopping addiction, as an antecedent or a triggering factor.[citation needed] In another study, Valence (1988) revealed that as the level of anxiety rises, the possibility of developing shopping addiction grows.[citation needed] Clinical research on the rate incidence of anxiety disorders in shopping addition also shows this relationship, although the percentage changes a lot: Shlosser (1994) 42%; McElroy (1994) 80%, and Christenson (1994) 50%.[citation needed] Research carried out by Garcés and Salcedo in 2005, based on a sample of 253 young people,[14] concluded that the anxiety trait has a significant influence on shopping addiction but, by itself, is not determinant.', 'shopping addiction signs', '1683138897.jpg', 4, '2023-04-16 11:59:58', '2023-05-03 15:34:57', '1'),
(14, 'introdication::Experts from many different fields have done a lot of research, debated, and talked about the links between using digital media and mental health. Research suggests that mental health issues arising from social media use affect women more than men and vary according to the particular social media platform used. Psychological or behavioral dependence on social media platforms can result in significant negative functions in individuals\' daily lives. Studies show there are several negative effects that social media can have on individuals\' mental health and overall well-being.[11][12][13] While researchers have attempted to examine why and how social media is problematic, they still struggle to develop evidence-based recommendations on how they would go about offering potential solutions to this issue. Because social media is constantly evolving, researchers also struggle with whether the disorder of problematic social media use would be considered a separate clinical entity or a manifestation of underlying psychiatric disorders. These disorders can be diagnosed when an individual engages in online content/conversations rather than pursuing other interests that occur in real life.', 'introduction', '1683138917.jpg', 4, '2023-04-16 12:05:33', '2023-05-03 15:35:17', '1'),
(15, 'introdication::Experts from many different fields have done a lot of research, debated, and talked about the links between using digital media and mental health. Research suggests that mental health issues arising from social media use affect women more than men and vary according to the particular social media platform used. Psychological or behavioral dependence on social media platforms can result in significant negative functions in individuals\' daily lives. Studies show there are several negative effects that social media can have on individuals\' mental health and overall well-being.[11][12][13] While researchers have attempted to examine why and how social media is problematic, they still struggle to develop evidence-based recommendations on how they would go about offering potential solutions to this issue. Because social media is constantly evolving, researchers also struggle with whether the disorder of problematic social media use would be considered a separate clinical entity or a manifestation of underlying psychiatric disorders. These disorders can be diagnosed when an individual engages in online content/conversations rather than pursuing other interests that occur in real life.', 'introduction', '1687478804.jfif', 5, '2023-04-16 12:05:33', '2023-06-22 22:06:44', '1'),
(16, 'Whether you use social media to connect with friends and loved ones, watch videos, or simply “kill time,” the popularity of this pastime has increased significantly over the last decade.This is especially the case in children and teenagers, as well as young to middle-aged adults.So, how does a seemingly harmless hobby turn into an “addiction”?Like other types of behavioral addictions, using social media can influence your brain in harmful ways. You may use social media compulsively and excessively. You can become so accustomed to scrolling through posts, images, and videos that it interferes with other areas of your life.Some experts estimate up to 10 percent of people in the United States have social media addiction. However, due to how common social media use is in general, the number of those who have social media addiction may be higher.Not everyone who uses social media will develop an addiction. Since this activity is becoming more accessible to more people, though, more people may develop an addiction to social media at some point in their lives.', 'What is social media addiction', '1681865616.jpg', 6, '2023-04-16 12:06:24', '2023-04-18 22:53:36', '1'),
(17, 'Engaging in social media once in a while is unlikely to be harmful. However, there are negative effects to consider when overusing social media.Some possible downsides of social media include:low self-esteem, which may be prompted by incorrect perceptions that others’ lives are “better” than yoursincreased isolation and lonelinessanxiety or depressiononset of social anxiety disordera fear of missing out (FOMO), which can lead to even more social media usagedisrupted sleep patterns, especially if you use social media right before bedtimedecreased physical activity, which may affect your overall healthpoor grades or work performanceignoring the relationships in your “real” lifereduced ability to empathize with others----------------------------------------------------------------           How can you decrease social media use::Whether you have social media addiction or are just on your apps more than you need to be, the good news is there are ways you can help decrease your overall use.Consider the following tips to help you achieve a healthier balance with social media:Delete your social media apps from your smartphone. While you can still access them from your personal computer, keeping them off your phone may help decrease the amount of time spent on social media overall.Turn off your personal phone during work, as well as during school, meals, and recreational activities. You can also adjust the setting on each social media app so you can turn off certain notifications.Set aside a certain amount of time dedicated to social media per day. Turn on a timer to help keep you accountable.Leave your phone, tablet, and computer out of your bedroom.Take up a new hobby that’s not technology-related. Examples include sports, art, cooking classes, and more.Make it a point to see your friends and family in person when possible.It’s also important to take regular breaks from social media altogether to help find some real-life grounding.Depending on your needs, your break can last for 1 day per week, a whole month, or an entire season. Let yourself be in control of this decision — not your social media account.----------------------------------------------------------------------------------------------------------------------               symptoms::While there exists no official diagnostic term or measurement, problematic social media use can be conceptualized as a non-substance-related disorder, resulting in preoccupation and compulsion to engage excessively in social media platforms despite negative consequences.[14]Problematic social media use is associated with mental health symptoms, such as anxiety and depression in children and young people.[15]A 2022 meta-analysis showed moderate and significant associations between problematic social media use in youth and increased symptoms of depression, anxiety, and stress.[16] Another meta-analysis in 2019, investigating Facebook use and symptoms of depression, also showed an association, with a small effect size.[17] In a 2018 systematic review and meta-analysis, problematic Facebook use was shown to have negative effects on well-being in adolescents and young adults, and psychological distress was also found with problematic use.[18] Frequent social media use was shown in a cohort study of 15- and 16-year-olds to have an association with self-reported symptoms of attention deficit hyperactivity disorder followed up over two years.[19]Decrease in moodA 2016 technological report by Chassiakos, Radesky, and Christakis identified benefits and concerns in adolescent mental health regarding social media use. It showed that the amount of time spent on social media is not the key factor but rather how time is spent. Declines in well-being and life satisfaction were found in older adolescents who passively consumed social media; however, these were not shown in those who were more actively engaged. The report also found a U-shaped, curvilinear relationship between the amount of time spent on digital media and with risk of depression developing, at both the low and high ends of Internet use.[20]Eating disordersAccording to research by Flinders University, social media use correlates with eating disorders. The study found eating disorders in 52% of girls and 45% of boys, from a group of 1,000 participants who used social media.[21]Through the extensive use of social media, adolescents are exposed to images of bodies that are unattainable, especially with the growing presence of photo-editing apps that allow you to alter the way that your body appears in a photo.[22] This can, in turn, influence both the diet and exercise practices of adolescents as they try to fit the standard that their social media consumption has set for them.[22]Instagram users who partake in looking for social media status and compare themselves to others tend to have an increase in negative various psychological effects including body image issues and eating disorders. [23] According to a study that included 2,475 students by doctoral student Madeline Wick and her advisor, Pamela Keel, PhD, a psychology professor at Florida State University, 1 in 3 women responded that they edit their pictures to change their weight and shape before posting a picture to Instagram. [24] A similar study in Australia and New Zeland found 52% of girls ages 13 to 14 with a social media account were very likely to have eating disorders like skipping a meal or overexercising. [25] These various studies found that teenage girls who viewed their retouched photo and compared that to their untouched photo directly harmed their body image. [26] Although this happens amongst various age groups and genders it was found that this tends to have a greater effect on the younger age group of women. [27]Excessive useOne can evaluate their social media habits and behavior toward it to help determine if an addiction is present. Addictions are a certain type of impulse control disorder, which may lead one to lose track of time while using social media. For instance, one\'s psychological clock may run slower than usual, and the user\'s self-consciousness is compromised.[28] Therefore, individuals may passively consume media for longer amounts of time. Psychologists estimate that as many as 5 to 10% of Americans meet the criteria for social media addiction today.[29] Addictive social media use will look much like that of any other substance use disorder, including mood modification, salience, tolerance, withdrawal symptoms, conflict, and relapse. In the digital age, it is common for adolescents to use their smartphones for entertainment purposes, education, news, and managing their daily life. Therefore, adolescents are further at risk for developing addictive behaviors and habits. Many medical experts have looked at the survey and come up with a clear conclusion, saying that teenagers\' excessive smartphone use has an impact on their behavior and even their mental health.[30] If the excessive use of social media and the platforms encompassed therein have proven to cause mental health issues, eating disorders, and lowered self-esteem, and the use of such media has been shown to be addictive in some form or another, medically there should be an avenue to treat the use or excessive use of the media platforms. For example, a study involving 157 online learners showed that, on average, learners on massive open online courses spend half of their online time on YouTube and social media, and less than 2% of visited websites accounted for nearly 80% of their online time.[31] The excessive use is causing underlying health conditions that in themselves are treatable, but if these issues stem from the use of social media platforms, the addictive nature of these platforms should be addressed in a way to reduce or eradicate the health-related or mental related effects resulting. More studies need to be done, more funding has to be provided, and the addiction to such platforms should be seen as a true addiction and treated as such, and not simply discarded as a millennial issue.[32]Social anxietySocial media allows users to openly share their feelings, values, relationships, and thoughts. With the platform social media provides, users, can freely express their emotions. However, social media may also be a platform for discrimination and cyberbullying.[33] There is also a strong positive correlation between social anxiety and social media usage,and in particular between cyberostracism and social media disorder.[34] The defining feature of social anxiety disorder, also called social phobia, is intense anxiety or fear of being judged, negatively evaluated, or rejected in a social or performance situation.[35][36][37][38] Many users with mental illnesses, such as social anxiety, go to the internet as an escape from reality, so they often withdraw from in-person communication and feel most comfortable with online communication. People usually act differently on social media than they do in person, resulting in many activities and social groups being different when using social media.[39] The pros and cons of social media are heavily debated; although using social media can satisfy personal communication needs, those who use them at higher rates are shown to have higher levels of psychological distress.[40]Lowered self-esteemLow self-esteem has generally had some sort of connection to serious mental health illnesses such as depression. some studies have been done to find if social media platforms have any sort of correlation to low self-esteem. One such study in which participants were given the Rosenberg Self-Esteem Scale to rate their self-esteem based on their social media usage found that participants that used Facebook tended to rate themselves more poorly on their general self-esteem.[41]In 2022 a case was successfully litigated that implicated a social media platform in the suicide of a Canadian teenage girl named Amanda Todd who died by hanging . This was the first time that any social media platform was held liable for a user\'s actions. While the question of what category problematic social media use falls in is still being developed and further researched, the policies and regulations of social media have already started to change. The interest now falls on implementing new laws regarding these penalties and how individuals can aim to keep their well-being safe along with the platforms that they are using, especially when it comes to privacy.-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                 What are the signs and symptoms of social media addiction::Several signs indicate that someone may have an addiction to social media. The most common signs and symptoms of social media addiction are listed below.Lying about the amount of time spent online: Individuals who suffer from social media addiction are often embarrassed about the significant amount of time spent on social media. As a result, people who are addicted to social media will lie to loved ones about the time spent scrolling on different platforms.Relying on social media as a coping mechanism: A person may increasingly use social media to cope with problems or negative feelings such as boredom, social anxiety, stress, or loneliness.Feeling restless when unable to check social media: Individuals who struggle with social media addiction may become restless or troubled when unable to use social media. A person may be aware of the negative feelings that being unable to access social media can cause, but may often feel like the situation is uncontrollable.Neglecting school- or work-related responsibilities: As social media continues to consume a big chunk of a person’s time and energy, school- or work-related responsibilities may be neglected.Withdrawing from friends and family: Personal relationships may suffer as a social media addict prefers to spend more time in the virtual world. A person may withdraw from family and friends, having difficulty staying in the moment as one’s full attention is given to social media.-------------------------------------------                                       How social media affects the brain::Social media affects the brain by activating its reward circuitry and releasing dopamine in the process. Dopamine is a neurotransmitter that creates feelings of pleasure and want.Being on social media increases dopamine signals in the brain. The brain then identifies social media use as a rewarding experience that a person does for survival and therefore needs to be repeated. This mechanism of action may explain why is social media addictive for some people.Rewards in social media come in the form of positive feedback from other users. Since these rewards increase the secretion of the feel-good hormone dopamine, people tend to look forward to positive feelings and will constantly check social media as a result.------------------------------------------                            What are the types of social media addiction::People may develop an addiction to certain activities carried out on social media. The five types of social media addiction are listed below.Facebook addiction: Described as the excessive and compulsive use of Facebook to boost one’s mood despite negative consequences. Problematic Facebook use interferes with a person’s life on a daily basis.Nomophobia: A shortened form of “no mobile phone phobia,” it describes a condition in which people develop fear and anxiety when left without a mobile device. Having an uncharged phone or being without cellular service can cause panic attacks in some people who suffer from the disorder.Instant messaging: The compulsive need for online interactions through instant messaging services, including WhatsApp and Facebook Messenger. The disorder involves a preoccupation with instant messaging and may cause a person to check their phone from time to time to see new messages or texts.Microblogging: Refers to the excessive use of microblogs, a form of traditional blogging that involves short pieces of content that can be in the form of audio, text, or video. One example of a popular microblogging site is Twitter.Online dating: The problematic use of online dating sites and applications. People may prefer forming virtual relationships over mobile dating applications, leading to isolation from family or friends and damage to personal relationships.---------------------------------------------------                              How can social media affect mental health::Social media can affect mental health by causing anxiety, depression, low self-esteem, and other mental health challenges. Several studies have found an association between excessive social media use and certain mental health conditions.Social media platforms offer individuals a place where there is an endless stream of opportunities for comparisons and feedback. This makes a person search for validation on social media, which the person sees as a substitute for a deep connection that can effectively be developed in real-life situations.Problematic social media use can increase one’s risk of being bullied online or becoming a cyberbully. Through different platforms, people can spread malicious rumors and hurtful messages that can be emotionally scarring. Oftentimes, cyberbullies can cause emotional damage while remaining anonymous.The great impact that social media platforms have on a person’s mental health can provide a clue as to exactly what is social media addiction and how serious its repercussions can be. Cyberbullying victims are often left with lasting emotional trauma, self-injurious behavior, and even suicidal thoughts.', 'What are the downsides of social media addiction:', '1681865644.jpeg', 1, '2023-04-16 12:07:20', '2023-04-18 22:54:04', '1');
INSERT INTO `articles` (`id`, `content`, `desc`, `img`, `cate_id`, `created_at`, `updated_at`, `user_type`) VALUES
(18, 'I was in high school when Facebook took off. This was in the mid-2000s, when the platform had a “wall” for public conversations, and you’d often post an uncurated album of 75 photos from a day out with your friends.As an introverted, socially awkward teenager whose in-person interactions never seemed to go right, I liked the way Facebook allowed me to portray myself as I wanted. I created a profile that showcased my favorite quotes from classic movies and the music I had on repeat. In the digital world, I was more open and candid. I got to know people that I wouldn’t talk to face-to-face—and I often used the platform to vent about my classes.My social media use seemed harmless. But I soon noticed that my attention span and mental capacity were suffering. When trying to finish school assignments, I’d check Facebook repeatedly. Each day I spent hours scrolling through its pages. It got so bad that I had to temporarily deactivate my profile ahead of my final exams to eliminate temptation.But after they ended I was back at it. I remember how, during a weeklong trip I took with my family that summer, we had no computer access (this was before smartphones), and I kept thinking, I can’t wait to get home to check Facebook. I’ll have more notifications since I’ve been away. Most notifications I got were surface-level comments or passive “likes” that didn’t really mean anything, yet it was so hard to stop checking them.I knew that I should have been reading a book—or pursuing some enriching hobby—instead. I blamed myself, thinking, This is how I’ve chosen to spend my time. But I later learned that social media platforms are addictive by design: The notifications they’re built around trigger a dopamine release in our brains, just as recreational drugs and gambling do. My Facebook addiction wasn’t my fault.As the New York Times reporter Max Fisher explains in his new book, The Chaos Machine, “Dopamine creates a positive association with whatever behaviors prompted its release, training you to repeat them….When that dopamine reward system gets hijacked, it can compel you to repeat self-destructive behaviors. To place one more bet, binge on alcohol—or spend hours on apps even when they make you unhappy.”Fisher says that the notifications themselves aren’t the problem. But they become one when social media platforms pair them with positive affirmation—those likes, follows, updates from friends, and photographs of family, pets, food, and beautiful scenery.In another new book, Digital Madness, the psychologist Nicholas Kardaras explains that the people behind Facebook and Instagram not only designed their platforms to be wildly addictive but have kept them that way even amid mounting evidence that social media overuse has a horrible effect on people’s mental and physical well-being. (The same is true for Twitter, YouTube, TikTok, and most other social media.)One study that Kardaras cites found that university students who used social media for more than three hours each school day suffered from poor sleep and poor academic performance. They also had much higher rates of depression, substance abuse, stress, and suicide. Why? One likely culprit is too much false social comparison: In online posts, photos, and videos, the grass always seems greener elsewhere.“Imagine,” Kardaras writes, “someone recently divorced and alone staring at their Facebook news feed and seeing a never-ending stream of one happy family vacation photo after another from all their friends?…We can see how the effect can exacerbate the feelings of emptiness and despair—of my life is a failure.”And children and teenagers (like high-school-era Kelsey) are uniquely vulnerable to getting hooked and suffering the consequences. In Influenced, Brian Boxer Wachler, a doctor who somewhat ironically gained his fame on TikTok and other social media platforms, digs into this issue. In fact, he coined the term “dopamine behavior balance,” or “DBB,” to refer to the level of dopamine stimulation in those seeking out the activities that provide it.Boxer Wachler contends that young people have become accustomed to turning to social media to maintain their DBB—and it’s reflected in their brain activity. In a UCLA study, MRI scans measuring blood flow to the brains of teenagers responding to Instagram likes showed that their nucleus accumbens, or reward centers, lit up with activity. Another MRI study found that adolescents were more likely to give a thumbs-up to photos that already had many likes and that seeing such photos stimulated areas of the brain that were entirely different from the areas stimulated by less popular photos.Like Kardaras, Boxer Wachler asks readers to extrapolate: “Imagine what occurs when young people—whose brains are still developing—are exposed to positive and negative social media influences for hours on end while typically unsupervised,” he writes. He notes that research has also revealed that multitasking with devices while doing homework and studying leads to lower gray-matter density in the anterior cingulate cortex, supporting evidence that using social media does indeed change the brain.Boxer Wachler goes on to say that teenagers are more susceptible than adults are to the opinions of peers and influencers because their brains are still changing. They are more likely to feel “immediacy, connectedness, and intimacy” with the people they follow, including celebrities, and lack the critical thinking skills to recognize when they’re in an entirely one-sided relationship.I did eventually manage to break my addiction to Facebook. These days it’s the last place I want to spend my free time—not just because its business is based on hooking people but also because it allowed bots to sow disinformation that unfairly influenced a pivotal presidential election.At the same time, part of my day job is to oversee HBR’s presence on social media platforms. But our aim is to create safe communities for discourse and to share information that’s truly helpful to individuals and organizations. My hope is that others on these platforms—and the companies that created and maintain them—can work toward a future where they try to enrich rather than prey upon their users.', 'other people experience :', '1681865663.jpeg', 1, '2023-04-16 12:08:35', '2023-04-18 22:54:23', '1'),
(19, 'Short-Term and Long-Term Impacts of Sport AddictionIn the short term, sport addiction is unlikely to have any serious consequences (apart from the potential for injury); indeed, the benefits for an individual’s fitness and physique may prove dangerously alluring. In the long term, however, the condition can have very serious consequences for physical and mental health: injury sustained during exercise can lead to permanent impairment or even death, while excessive training has also been linked to premature osteoporosis as a result of an exhaustion of the autonomic nervous system.Mental health disorders which develop as a consequence of a sport addiction can have permanent and extremely damaging consequences: certain eating disorders are recognised as being highly dangerous (anorexia nervosa in particular is considered the single most dangerous mental disorder in terms of the number of sufferers who die each year) while major depressive disorder can also lead to self-harm and even suicide. The effects of sport addiction upon an individual’s relationships, professional and academic prospects and financial well-being can also be permanently damaging.How sport addiction affects the brainAs previously mentioned, behavioural addictions are a disorder of the brain’s reward system, with abnormal levels of dopamine produced by repeated engagement in addictive behaviour affecting the part of the brain known as the amygdala and the ventral tegmental area. Over time, tolerance develops: the behaviour in question needs to be repeated with ever greater frequency or greater intensity in order to produce the same effect as originally (and cessation of that behaviour leads to cravings to repeat it, and over the longer term to the development of withdrawal syndrome).Similarly, high levels of endorphins produced by regular exercise can also lead to the development of tolerance, requiring ever-greater endorphin production in order to feel the same positive effects as previously.Sport which presents the risk of head injury can also, obviously, have consequences for the brain, with brain damage having a huge variety of potential ramifications depending upon the area/s of the brain affected. Repeated blows to the head such as those which can be sustained in martial arts (including boxing), rugby and even football (by heading the ball) can damage the frontal lobe, which regulates impulse control; consequences can include depression, mood swings, emotional instability and even suicidal ideation.Get Confidential Help NowCall our admissions line 24 hours a day to get help.02038 115 619Sport Addiction and Substance AbusePeople who suffer from behavioural addictions are much more likely than average to engage in substance abuse. Sport addiction, in particular, is associated with the consumption of performance-enhancing drugs, some of which can be highly addictive (including stimulants such as cocaine and amphetamine). The pressure placed on competitive sportspeople to achieve good results can lead them to self-medicate with alcohol and/or illegal drugs, while some prescription medication intended to relieve stress and anxiety can also prove habit-forming.UK RehabInjuries sustained whilst participating in sport or exercise can be very painful and debilitating. The treatment of chronic pain with opioids is one of the major contributors to the opioid epidemic currently affecting the USA and other countries, and while that epidemic is not yet being mirrored here in the UK, the abuse of pain medication is still a significant problem – and can lead to an individual’s turning to illegal drugs, including heroin.Treatment for Sport AddictionFortunately, there are now a good number of highly capable facilities and organisations across the UK treating addiction, and a growing number of them now treat sport addiction specifically. A range of treatment methods and approaches are employed, with psychotherapy typically at the core.CBTCognitive behavioural therapy (CBT) aims at uncovering and addressing negative patterns of behaviour and thought processes, through dialogue between the therapist and patient. It is considered the backbone of much addiction treatment, with a long history of proven success.Family therapyIn almost all cases of addiction, family members also suffer alongside the addict him/herself. Family therapy looks at the addiction in the context of the whole family, and seeks to provide healing for family members as well as the addict.12-step programmesAt 12-step programme is a set of 12 principles guiding a person’s recovery from addiction. The first 12 step programme was developed by the founders of Alcoholics Anonymous in the 1930s, and this original programme has gone on to be the model for a great many variants tackling different types of addiction.Support groupsSupport groups provide ongoing assistance to recovering addicts, in the form of a peer group comprising individuals who themselves have been through addiction. Attendance at meetings is usually free with the sole criterion for attending being a commitment to live life free of addiction.Prevention for Sport AddictionThe usual starting point for preventing addiction is abstinence, but in the case of exercise this is not merely challenging but profoundly unhealthy. Instead, firm limits must be set around the frequency and intensity of exercise (a limited number of periods of exercise per week, for no longer than a set time). Goals should be set in collaboration with a sports therapist who can determine which might be attainable within the limited exercise periods available. Eating healthily is a crucial component of staying fit, but a preoccupation with food which risks turning into an eating disorder should be avoided. It may prove useful to speak with an addiction specialist about the optimal approach to exercise and diet.Sport Addiction Facts/StatisticsBetween 3% and 8% of gym users suffer from an addiction to exercise.Fewer than 5% of adults engage in at least 30 minutes of physical activity daily.Up to 7% of students studying sports science at university are exercise addicts.It is estimated that 25% amateur runners, 50% of marathon runners, and 52% of triathletes suffer from an exercise addiction.One study estimates that approximately 33% of sex addicts are also addicted to exercise.', 'sport addiction', '1687478832.jfif', 5, '2023-04-16 12:15:47', '2023-06-22 22:07:12', '1'),
(21, 'Sport Addiction ExplainedMillions of Britons take part in sport regularly, and for the vast majority of us, it is an enjoyable means of staying fit and a great way to meet people. Unfortunately, for some people, sport and exercise become something much more negative and damaging: an addiction.What is Sport Addiction?Sports addiction is a condition in which the affected individual feels a compulsion to engage in sport or physical exercise regardless of any negative consequences this may have on their physical and mental health and upon any other aspects of their life.The benefits of exercise are well-known, and in today’s society – in which the obesity epidemic is a huge (and growing) problem claiming tens of thousands of lives each year – the idea that people may be suffering (and even dying) as a result of too much exercise may seem a bizarre one.However, people suffering from sports addiction are either unable to recognise the line beyond which healthier exercise becomes something much more damaging, or can recognise that line but are unable to stop themselves from crossing it.Exercise addicts are compelled to perform excessive amounts of exercise, with a deleterious impact upon their physical and mental well-being and possibly to the detriment of their personal and professional/academic lives and their financial security. Often co-occurring with eating disorders and/or substance abuse disorders, and featuring behaviours which are often also symptomatic of other mental health conditions and disorders, sport addiction is often difficult to diagnose. Nevertheless, there is little doubt that the behaviours which characterise sport addiction can be dangerous and even in the worst cases deadly, and that anyone suffering from it should seek help as soon as they feel able to acknowledge their condition.Other names (also known as exercise addiction)As mentioned above, in this article “sport addiction” and “exercise addiction” are used interchangeably. Other terms used to describe the condition include exercise dependence, compulsive exercising, exercise abuse, compulsive athleticism, compulsive working out, obligatory exercise and anorexia athletica. In common (i.e., non-medical) parlance, someone considered to be suffering from the condition might be called an exercise addict, an exerciseaholic, a workoutaholic, a gymaholic or a gym fanatic; of these terms, only the first is likely to be used in a medical setting.Sport Addiction ExplainedMillions of Britons take part in sport regularly, and for the vast majority of us, it is an enjoyable means of staying fit and a great way to meet people. Unfortunately, for some people, sport and exercise become something much more negative and damaging: an addiction.What is Sport Addiction?Sports addiction is a condition in which the affected individual feels a compulsion to engage in sport or physical exercise regardless of any negative consequences this may have on their physical and mental health and upon any other aspects of their life.The benefits of exercise are well-known, and in today’s society – in which the obesity epidemic is a huge (and growing) problem claiming tens of thousands of lives each year – the idea that people may be suffering (and even dying) as a result of too much exercise may seem a bizarre one.However, people suffering from sports addiction are either unable to recognise the line beyond which healthier exercise becomes something much more damaging, or can recognise that line but are unable to stop themselves from crossing it.Exercise addicts are compelled to perform excessive amounts of exercise, with a deleterious impact upon their physical and mental well-being and possibly to the detriment of their personal and professional/academic lives and their financial security. Often co-occurring with eating disorders and/or substance abuse disorders, and featuring behaviours which are often also symptomatic of other mental health conditions and disorders, sport addiction is often difficult to diagnose. Nevertheless, there is little doubt that the behaviours which characterise sport addiction can be dangerous and even in the worst cases deadly, and that anyone suffering from it should seek help as soon as they feel able to acknowledge their condition.Get Confidential Help NowCall our admissions line 24 hours a day to get help.02038 115 619UK RehabOther names (also known as exercise addiction)As mentioned above, in this article “sport addiction” and “exercise addiction” are used interchangeably. Other terms used to describe the condition include exercise dependence, compulsive exercising, exercise abuse, compulsive athleticism, compulsive working out, obligatory exercise and anorexia athletica. In common (i.e., non-medical) parlance, someone considered to be suffering from the condition might be called an exercise addict, an exerciseaholic, a workoutaholic, a gymaholic or a gym fanatic; of these terms, only the first is likely to be used in a medical setting.The confusion over and controversy of exercise/sport addictionAs is the case with various problematic behaviours and behaviour patterns, there is no universal consensus within the medical and psychiatric communities as to whether or not exercise addiction should be recognised as a distinct condition. No single classification of the condition exists to which the majority of doctors are happy to refer.It is not, for example, listed as an independent disorder in the current (fifth: DSM 5) edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM) of the American Psychiatric Association, probably the leading diagnostic publication worldwide focusing exclusively on mental health.Alongside this problematic lack of clarity, many authorities disagree about exactly when healthy exercise becomes unhealthy and subsequently develops into an addiction. This is partly because of a lack of empirical evidence – and even the extent to which behavioural addictions generally merit their own distinct diagnostic frameworks.Because exercise is promoted as having numerous health benefits as well as being frequently prescribed as part of a holistic addiction recovery programme such as that which may be provided as part of a stay in residential rehabilitation. There is a natural resistance to the idea that it could be an addiction in its own right, even though the biochemical mechanisms driving behavioural addiction have been identified, and exercise addiction has various similarities even with drug addiction, including the phenomenon of withdrawal syndrome.At present – and until a consensus is reached regarding any possible diagnostic framework for exercise addiction – how any individual’s case is assessed depends to a great extent on the attitude of the diagnosing physician towards exercise addiction’s status as a distinct disorder (or otherwise).Healthy Fitness vs Exercise/Sport AddictionOne cause of the aforementioned lack of diagnostic unanimity is the difficulty in differentiating between healthy and addictive behaviour when it comes to exercise and physical fitness, especially in individuals who are striving to achieve weight loss for reasons not relating to a mental disorder, and in those who are training for specific objectives including competitions.Sport Addiction ExplainedMillions of Britons take part in sport regularly, and for the vast majority of us, it is an enjoyable means of staying fit and a great way to meet people. Unfortunately, for some people, sport and exercise become something much more negative and damaging: an addiction.What is Sport Addiction?Sports addiction is a condition in which the affected individual feels a compulsion to engage in sport or physical exercise regardless of any negative consequences this may have on their physical and mental health and upon any other aspects of their life.The benefits of exercise are well-known, and in today’s society – in which the obesity epidemic is a huge (and growing) problem claiming tens of thousands of lives each year – the idea that people may be suffering (and even dying) as a result of too much exercise may seem a bizarre one.However, people suffering from sports addiction are either unable to recognise the line beyond which healthier exercise becomes something much more damaging, or can recognise that line but are unable to stop themselves from crossing it.Exercise addicts are compelled to perform excessive amounts of exercise, with a deleterious impact upon their physical and mental well-being and possibly to the detriment of their personal and professional/academic lives and their financial security. Often co-occurring with eating disorders and/or substance abuse disorders, and featuring behaviours which are often also symptomatic of other mental health conditions and disorders, sport addiction is often difficult to diagnose. Nevertheless, there is little doubt that the behaviours which characterise sport addiction can be dangerous and even in the worst cases deadly, and that anyone suffering from it should seek help as soon as they feel able to acknowledge their condition.Get Confidential Help NowCall our admissions line 24 hours a day to get help.02038 115 619UK RehabOther names (also known as exercise addiction)As mentioned above, in this article “sport addiction” and “exercise addiction” are used interchangeably. Other terms used to describe the condition include exercise dependence, compulsive exercising, exercise abuse, compulsive athleticism, compulsive working out, obligatory exercise and anorexia athletica. In common (i.e., non-medical) parlance, someone considered to be suffering from the condition might be called an exercise addict, an exerciseaholic, a workoutaholic, a gymaholic or a gym fanatic; of these terms, only the first is likely to be used in a medical setting.The confusion over and controversy of exercise/sport addictionAs is the case with various problematic behaviours and behaviour patterns, there is no universal consensus within the medical and psychiatric communities as to whether or not exercise addiction should be recognised as a distinct condition. No single classification of the condition exists to which the majority of doctors are happy to refer.It is not, for example, listed as an independent disorder in the current (fifth: DSM 5) edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM) of the American Psychiatric Association, probably the leading diagnostic publication worldwide focusing exclusively on mental health.Alongside this problematic lack of clarity, many authorities disagree about exactly when healthy exercise becomes unhealthy and subsequently develops into an addiction. This is partly because of a lack of empirical evidence – and even the extent to which behavioural addictions generally merit their own distinct diagnostic frameworks.Because exercise is promoted as having numerous health benefits as well as being frequently prescribed as part of a holistic addiction recovery programme such as that which may be provided as part of a stay in residential rehabilitation. There is a natural resistance to the idea that it could be an addiction in its own right, even though the biochemical mechanisms driving behavioural addiction have been identified, and exercise addiction has various similarities even with drug addiction, including the phenomenon of withdrawal syndrome.At present – and until a consensus is reached regarding any possible diagnostic framework for exercise addiction – how any individual’s case is assessed depends to a great extent on the attitude of the diagnosing physician towards exercise addiction’s status as a distinct disorder (or otherwise).UK RehabHealthy Fitness vs Exercise/Sport AddictionOne cause of the aforementioned lack of diagnostic unanimity is the difficulty in differentiating between healthy and addictive behaviour when it comes to exercise and physical fitness, especially in individuals who are striving to achieve weight loss for reasons not relating to a mental disorder, and in those who are training for specific objectives including competitions.Even including such outliers, only a small proportion (between 3% and 8%) of gym users can be viewed as having a problem which may be considered an addiction, reporting a sufficient proportion of the signs and symptoms described below for their cases to be considered clinically significant.Many people who engage in harmless levels of exercise share reasons for doing so with exercise addicts: weight management, the quest for a desired body image, stress relief, and general health are all positive reasons to work out. However, those suffering from sport addiction typically report withdrawal symptoms after a short period without exercising, which non-addicts will not.They may develop cravings for exercise which may have a significant impact upon mood and allow sport and exercise to impact upon their daily lives and relationships in a manner which non-addicts would hardly consider. For example, they could be missing important meetings and/or family or romantic events for the sake of going to the gym.Types of Sports That People Can Get Addicted to Taking Part InTheoretically, any sport could become an addiction, though in practice it is sports which require a good degree of exertion which are likely to prove problematic in this area. Sports such as snooker which are much more demanding mentally than physically (indeed, there are significant debate about whether such activities should be described as “sports” at all rather than “games”) do not offer the same health benefits to participants as do sports which require significant physical effort. That is not to say that an individual cannot become obsessed with playing low-exertion sport, with extremely negative consequences for their relationships and life prospects; however, such an obsession would almost certainly result in a different diagnosis from sport addiction.Logically, a person’s opportunities to participate in a sport decrease proportionally to the number of people required to play that sport, since the greater the number of participants required the harder it is to arrange a game or match of that sport. However that does not of course mean that team sports (for example football, requiring a total of 22 players) cannot be addictive; although opportunities actually to play a team sport may be limited, players can engage in training much more frequently, and in fitness training at any time, day or night.It is, after all, the exercise element of sport which is the addictive behaviour in this condition, so although someone may only play football – to continue the above example – for 90 minutes each week, they may engage in exercise for many hours throughout the week', 'Sport Addiction Introduction', '1687478856.jfif', 5, '2023-04-16 12:18:58', '2023-06-22 22:07:36', '1'),
(22, 'Video games have captured the imagination of Americans since the 1970s, with the introduction of very simple games. Although the graphic features of these basic programs were primitive compared to today’s complex, multifaceted games, many children, teens, and adults quickly became enthralled with this new pastime. It soon became apparent that video games had the potential to consume a large amount of time as the players tried repeatedly to win. Today, video game addiction has been recognized as a process addiction similar to compulsive gambling, in which the rush of winning becomes one of the primary motivations for playing.In the early days of video games, most games were available only on arcade machines, which were not accessible 24 hours a day. These days, games are one of the most popular features of social network sites, and they can be played almost continuously on handheld game devices, personal computers, or smart phones. Video games have become much more elaborate, with rich alternate worlds, multiple characters, and complicated storylines. Introverted children or teens may find that they can avoid interacting with “real” peers by engaging primarily with other online players, in the guise of characters with awe-inspiring gifts and powers.When Gaming Becomes an AddictionWhen Gaming Becomes an AddictionNot all researchers agree that video gaming is a harmful or addictive activity. Many people, including parents, believe that video games expand the imagination, give children the opportunity to work collaboratively, and sharpen cognitive skills. Yet when young people spend most of their time playing video games at the expense of schoolwork, physical exercise, family events, or social activities, the benefits of gaming seem less certain.There is some controversy over whether video gaming is an addiction comparable to gambling, drug abuse, or alcoholism.Psychology Today states that the comparison between video gaming and gambling is flawed, because there are no financial stakes or material losses involved with video games. Winning a video game requires cognitive skills and sharp reflexes, while winning at gambling is a matter of luck.However, according to WebMD, video game addiction can be considered a type of impulse control disorder.The source of the addictive quality of gaming is still unknown, but researchers propose that the process of playing and winning these games may trigger a release of dopamine, a brain chemical that elevates mood and provides a rush of energy. Dopamine is the same neurotransmitter involved in other addictive activities, such as alcohol or drug abuse.Video game addiction is not currently recognized as an addictive disorder in the Diagnostic and Statistical Manual of Mental Disorders, the definitive guide to psychiatric illness. But an obsessive preoccupation with games at the expense of real-life activities or obligations shares some of the characteristics of addictive behavior. How can a parent tell when gaming has stopped being simple entertainment and become an addiction? Here are a few of the key warning signs to watch for:Poor performance at school, work, or household responsibilities as a result of a preoccupation with gamingNeglect of other hobbies or friendshipsA decline in personal hygiene or groomingInability to set limits on how much time is spent gamingSigns of irritability, anxiety, or anger when forced to stop gaming, even for brief periods of timeThe need to spend more time playing games or to play more intensely in order to get the same level of enjoymentSymptoms of physical or psychological withdrawal, such as loss of appetite, sleeplessness, agitation, or emotional outbursts if the game is taken awayUsing video games as a way to escape stressful situations at work or school, or conflicts at homeChildren and teenagers aren’t the only ones who can be vulnerable to video game addiction. Adults may also play video games for hours instead of engaging in work activities, pursuing hobbies, or devoting time to their partners or children. When adults are no longer able to control the amount of time they spend on video games, or when their jobs or relationships begin to suffer as a result of video gaming, they may have crossed the line from recreation to addiction.Popular Beliefs About Video GamesThere are many misguided beliefs and misconceptions about video games. In some schools of thought, these computerized programs are entirely negative, promoting violence, sexism, and social isolation among young people. Other perspectives hold that video games can be a valuable tool for education and character development, allowing children to simulate the roles of powerful heroes. In reality, video games have both positive and negative characteristics, and the effect of playing games often depends on the player’s attitudes toward games and life in general.Parenting Science proposes that the compelling quality of video games may not be due to an addictive response, but to a psychological phenomenon called “flow.” Flow takes place when individuals become so immersed in an activity that they lose track of time. Any engaging activity — even work or school projects — can induce a sense of flow once a person is caught up in the process. While there is nothing necessarily wrong with being immersed in an engaging, educational game, this process can turn into a compulsion if the user is unable to stop, and if it takes time away from other important activities or relationships.Don’t wait. Call us now.Our admissions navigators are available to help 24/7 to discuss treatment.Call(888) 811-6642Why call us?Health Risks and ConcernsCompulsive video gaming can have negative effects on a developing mind or body. Adult players, too, may suffer from the effects of hours spent sitting on the couch or at a computer desk. Listed below are a few of the key concerns for younger players:Sedentary lifestyle: Hours spent sitting at a computer or in front of a device can take a toll on a young person’s body. The lack of physical exercise involved in video gaming has led to public health concerns about weight gain, poor posture, and an increased risk of type 2 diabetes in America’s children and teens.Lack of social engagement: Although video games require engaging with others in computerized environments, they don’t necessarily prepare children for the realities of socializing with their peers. Learning how to interact with others in a real-world setting is an important social skill that may be neglected by individuals who spend too much time gaming.Problems with concentration and attention: There is some concern that the rapid movements and fast-paced action of video games promote a loss of concentration in players. Children who spend a lot of time playing video games may become less interested in reading books, for example, which requires more focused, prolonged attention.Avoidance of developmental tasks: Adolescence is a time of self-discovery and personal development. In order to become mature adults who can take on the challenges of life, teenagers must learn how to confront painful emotions and awkward social experiences. When used appropriately, fantasy roleplaying video games can help children learn and apply valuable character traits that may help them in their interactions with others. But when video gaming is used as an escape mechanism, it allows children to avoid the developmental challenges of growing up.Increased aggression or violence: Children and teens who devote a lot of time to playing video games that focus on combat, fighting, or violence may display more signs of aggression than those who don’t play these games. Parents must be aware of the content of video games, which are subject to a rating system similar to the one applied to films. The Entertainment Software Rating Board (ESRB) posts guidelines and ratings for popular games based on the age of the player, as well as educational resources for parents and parental game controls.Seizures and repetitive stress injuries: The British Medical Journal (BMJ) published an article about the risks of video gaming for players who have epilepsy or other seizure disorders. The flickering graphics, lights, and colors of video game displays may trigger seizure activity in some players. There is also evidence that compulsive game playing may lead to repetitive stress injuries of the wrists or hands', 'Info about Video Games Addiction', '1685312202.png', 1, '2023-04-16 12:20:28', '2023-05-28 20:16:42', '0'),
(23, 'It’s great to do things you enjoy. But can you go too far with a hobby? And at what point does it become an addiction? That’s the question experts are trying to answer about playing video games.Even though gaming has been around for almost 50 years, studies about its harms are still in the early stages. Different groups have come to different conclusions about whether problem playing should be called an addiction.The World Health Organization added “gaming disorder” to the 2018 version of its medical reference book, International Classification of Diseases. But the American Psychiatry Association’s manual, the DSM-5, didn’t. (So far, gambling is the only “activity” listed as a possible addiction.)Signs to Watch ForThe DSM-5 does include a section to help people and doctors know the warning signs of problem video gaming. These problems can happen whether you play online or offline.Here’s what to look for in yourself or someone close to you -- your partner, a child, or a friend. You need to have five or more of these signs in 1 year to have a problem, according to criteria that were proposed in the DSM-5:Thinking about gaming all or a lot of the timeFeeling bad when you can’t playNeeding to spend more and more time playing to feel goodNot being able to quit or even play lessNot wanting to do other things that you used to likeHaving problems at work, school, or home because of your gamingPlaying despite these problemsLying to people close to you about how much time you spend playingUsing gaming to ease bad moods and feelingsOf course, not everyone who plays a lot has a problem with gaming. Some experts say that it’s harmful to label people who might just be very enthusiastic about gaming. One thing they do agree on is that the percentage of players who meet the proposed criteria for addiction to video games is small. It’s estimated to be somewhere between 1% and 9% of all gamers, adults and kids alike. (It’s more common in boys and men than girls and women.)', 'It’s great to do things you enjoy', '1687192502.jpg', 1, '2023-04-16 12:21:24', '2023-06-19 13:35:03', '0'),
(24, 'Work AddictionWhen work becomes an addictionWork addiction, often called workaholism, is a real mental health condition. Like any other addiction, work addiction is the inability to stop the behavior. It often stems from a compulsive need to achieve status and success, or to escape emotional stress. Work addiction is often driven by job success. And it’s common in people described as perfectionists.Much like someone with a drug addiction, a person with a work addiction achieves a “high” from working. This leads them to keep repeating the behavior that gives them this high. People with a work addiction may be unable to stop the behavior despite the negative ways it may affect their personal life or physical or mental health.SymptomsIn a culture where hard work is praised and putting in overtime is often expected, it can be difficult to recognize work addiction. People with a work addiction will often justify their behavior by explaining why it is a good thing and can help them achieve success. They may simply appear committed to their job or the success of their projects. However, ambition and addiction are quite different.A person with a work addiction may engage in compulsive work to avoid other aspects of their life, like troubling emotional issues or personal crises. And similar to other addictions, the person may engage in the behavior unaware of the negative effects that the addiction is causing.Symptoms of a work addiction include:putting in long hours at the office, even when not neededlosing sleep to engage in work projects or finish tasksbeing obsessed with work-related successhaving intense fear of failure at workbeing paranoid about work-related performancedisintegrating personal relationships because of workhaving a defensive attitude toward others about their workusing work as a way to avoid relationshipsworking to cope with feelings of guilt or depressionworking to avoid dealing with crises like death, divorce, or financial troubleDiagnosisThe Bergen Work Addiction Scale is used to identify work addiction. It was developed by the University of Bergen and is accepted in the medical community. The scale measures several factors including how often certain aspects apply to your life. These items are measured on a scale of:never (1)rarely (2)sometimes (3)often (4)always (5)Items you may be asked to rate include:You think of how you can free up more time to work.You work in order to reduce guilt, helplessness, depression, and anxiety.You’ve been told to reduce your time working but ignore those requests.You spend much more time working than you initially intend.You become stressed when you are not able to work.You lower the importance of hobbies, fun activities, and fitness in exchange for more work time.You work so much that it has negatively impacted your health.Research related to the scale published in the Scandinavian Journal of Psychology indicates that if you can answer “often” or “always” to at least four of these items, you may have a work addiction.Treatment optionsIf you have work addiction, you may not need the same level of treatment as someone with a drug addiction. However, it’s possible that initially you will require an inpatient or outpatient rehabilitation program to manage the behavior.While a rehabilitation program is more common in drug and alcohol addictions, severe work addictions can also be helped by this intensive approach. Inpatient treatment requires you to stay at a facility during recovery. Outpatient treatment allows you to live at home while attending classes and counseling during the day.Many people with a work addiction find help through 12-step groups and other therapy programs. Options for group therapy are available through organizations such as Workaholics Anonymous. This kind of program allows you to connect with other people going through similar struggles and provides a healthy source of support.Work addiction can result from a coexisting mental health condition, such as obsessive-compulsive disorder (OCD) or bipolar disorder. The addiction could also cause mental health issues, such as depression.For these reasons, it may be helpful to have a mental health assessment. A mental health expert can help design a treatment plan. The plan will address the addiction and any underlying problems. One-on-one therapy, and even medications, could help control impulses, anxiety, and stress.ExpectationsLike most addictions, work addiction will get worse over time until a person seeks help. People may experience “burnout” if they work to the point of physical and mental exhaustion. This is a common result of work addiction. Burnout can lead to extreme stress, damaged relationships, and even drug abuse.Without treatment, a person with a work addiction could alienate themselves from friends and family. Waiting too long to get help could damage these relationships permanently. Also, chronic stress that sometimes results from constant working can be hard on physical health. This finding came out of a study published in the Journal of the American Medical Association (JAMA).Overwork may lead to a weakened immune system and increased risk of disease. But fortunately, work addiction is manageable. With treatment, people can restore a healthy work balance in their live.People with a work addiction often work to avoid feelings of guilt about not working. So, it’s important for the recovering addict to develop a healthy relationship with work. Most of us need to work in order to pay bills, so creating a balance is crucial. In most cases, it is impossible to simply stop working.It may be helpful to take some time off from work to realize that life will go on without constant working. A career change may also help manage the addiction. As a psychosocial condition, work addiction is usually much easier to control than drug addiction. The following changes might also help:making lifestyle changesbalancing your life activitiesavoiding stressors and triggersResourcesIf you or someone close to you might have a work addiction, there are organizations that can help. The following resources may be helpful in giving more information about work addiction and treatment options:Workaholics AnonymousNational Association of Addiction Treatment Providers', 'information about work addiction', '1681865810.jpg', 6, '2023-04-16 12:22:50', '2023-04-18 22:56:50', '1');
INSERT INTO `articles` (`id`, `content`, `desc`, `img`, `cate_id`, `created_at`, `updated_at`, `user_type`) VALUES
(25, 'For many of us, working simply feels good. But just because it feeds your ego or makes you feel important, that doesn’t mean it’s actually good for you. How do you break the cycle of working long hours at the office and constantly checking email at home? How do you persuade those around you — similarly work-obsessed colleagues or a demanding boss — that working all the time isn’t healthy? How can you reset the expectations of your manager and coworkers?What the Experts SayIn a society “where work is considered morally worthy,” being a workaholic might not seem like a serious problem, says Mary Blair-Loy, a sociologist and the founding director of the Center for Research on Gender in the Professions at the University of California, San Diego. “We live in a culture where work demands and deserves our undivided allegiance,” she says. And that sort of devotion does have its benefits. “You feel challenged by your work; you’re engaged by it; you’re learning new things; and you have the opportunity to shape other people’s careers. It’s extremely rewarding,” she says. But when you give all your attention to work, you eventually pay a steep price, according to Stewart Friedman, professor of management at the Wharton School and author of Leading the Life You Want: Skills for Integrating Work and Life. Working long hours, taking few vacations, and never truly being “off” — because of the ubiquity of digital devices — is “harmful to your relationships, your health, and also your productivity,” he says. Here are some tips to help you overcome your addiction.Redefine successStart by rethinking how you define success. Workaholics tend to be perfectionists who are always aiming to get ahead. Professional achievements are well and good, of course, but to live a truly full life you also need to “have purpose and draw a boundary line that shows respect for your family life, physical health, and spiritual health,” says Friedman. In other words, your self-worth should not revolve around your status, paycheck, and prestige; it should take into account the quality of your relationships, your engagement in your community, and your physical and emotional well-being. Remember too that you can’t be the best at everything, says Blair-Loy, so try not to be too hard on yourself. “You don’t have to be the perfect worker, the perfect parent, a triathlete, or someone who reads The Economist from cover to cover,” she says. “You shouldn’t have superhuman expectations.”Refocus your attentionNext, you need to step back and reflect on how you want to spend your time and energy. “Think about what matters,” Friedman says. “As you’re trying to establish meaningful connections and advance your career, attention is your most precious asset.” How do you want to invest it? “You have a lot more control over those things than you think.” There will always be more work to be done, but make the conscious choice to spend time elsewhere: with family, with friends, or in your community. Blair-Loy suggests focusing on one thing at a time — stop multitasking. “If you’re out with your spouse or watching a baseball game with your kid and you take a call from work or check email, you’re cheating them” out of time with you, she says. Multitasking is not just rude; it’s also ineffective. “You may get some minor extra credit at work for that quick response, but it’s not a thoughtful reply,” she explains. Give the person you’re with your full concentration for a certain period of time, then allow yourself a five-minute time-out to deal with whatever work has come in.Reset expectationsWhen trying to break an addiction, “you can’t do it alone,” says Friedman. He suggests enlisting the help of colleagues, family, and friends for “accountability and support.” Resetting the expectations of your boss and coworkers requires that you be clear about the changes you’re making and why you’re making them. Explain to your boss and coworkers why “it’s in their best interest” to help you disengage. “It can’t be a matter of asking them to help you disconnect so that you can be with your family. They have to see the benefit to themselves,” he says. Friedman recommends saying something like, “In the next month, I’m going to be offline after 4 PM every Tuesday. I think you’re going to see an improvement in my performance because I will be able to take care of some things in my personal life, and I will be less distracted. After a month of trying this, we will talk about it how it went for both of us.” Blair-Loy agrees: Being up front and direct about your plans to “create time in your day when you can’t be interrupted” allows you more flexibility to mold your schedule and also helps “manage expectations” within your team.Experiment with digital detoxesYou don’t have to be a work addict to be a slave to your smartphone — what Friedman calls “a reactive robot twitching every time you’re called upon.” When “you’re physically present but psychologically absent, you’re saying to the people who are with you that they are less important.” When it comes to digital detoxing, “there is no one solution that works for everyone.” So you should experiment. Here are some suggestions:Hide your smartphone. There’s no reason to keep your smartphone within reach after the workday is done. “When you’re in the office, would you ever park your kid in the corner in case he needed something?” Blair Loy asks. “No. So why, when you’re at home at night with your family, would you have your work parked in the corner in case it needs you?” She points to studies that have shown how the mere presence of a phone between two people affects the quality and content of their conversation. “Communication is more shallow because we know it we can be interrupted by a ping or a buzz at any moment,” she says.Stop using your phone as a time-filler. Many of us, workaholics especially, turn to their phones “whenever there’s a free moment,” says Friedman — waiting in line at the office cafeteria, between conversations at a networking event, in the conference room before colleagues arrive. “You turn to your screen as a social crutch when you’re anxious” or bored, he says. Resist this impulse by doing something you enjoy or look forward to, he says. At first it “might feel uncomfortable” — after all, reaching for your phone to fill the time can be a tough habit to break — but it will help you “be in the moment,” which will allow you to “stop and smell the flowers.”Model better manners at the office. “It doesn’t matter how normative it is in your organization” to be constantly tapping away on your phone when someone else is talking, Friedman says. “It’s disrespectful.” As a leader, you’re setting an example. Your team is learning about professionalism from you, and they will repeat these behaviors in front of clients and others. “You influence your environment,” he says.Practice mindfulnessA growing body of evidence suggests that practicing nonjudgmental, present-moment awareness — also known as mindfulness — helps people become more mentally flexible and make better decisions. For people trying to break an addiction to work, mindfulness training can therefore be “extremely valuable,” according to Friedman. “It helps you get a sense of control and purpose and be conscious and deliberate about your choices.” Blair- Loy recommends meditation in particular. “It helps to take a few breaths before acting,” she says.Prioritize your health — for the sake of othersAs you shift priorities, also remember to take care of yourself. “You can’t work productively in a creative and nuanced way for more than a certain number of hours per day — and you certainly can’t do it without proper sleep, nutrition, and exercise,” says Blair-Loy. Numerous studies show that people who prioritize their health — eating well, taking breaks and time off, and getting plenty of exercise — have more energy and better focus. Of course, warns Friedman, “if you’re [only] thinking about these things out of your own interest, it’s not going to be sustainable.” You must also think about the other people — clients, friends, coworkers, and family — who count on you and your good health. “That mindset changes your motivation,” he says.Principles to RememberDo:Redefine personal success to be more about high-quality relationships, community engagement, and physical and spiritual wellness.Be deliberate about how you choose to spend your time and with whom you spend it.Try mindfulness.Don’t:Go it alone — enlist colleagues, family, and friends to help you disengage.Automatically reach for your phone whenever you have a down moment.Skimp on exercise, sleep, and wholesome food.Case Study #1: Seek encouragement and reset your colleagues’ expectationsAmanda Sowadski, a former corporate director of business operations based in Minneapolis, first realized she was a workaholic after landing in the ER with a panic attack. The doctor prescribed Xanax, and Amanda knew then that “something had to change.”“In hindsight, losing many of my relationships with anyone outside of work because I was too busy at the office should have been a clue,” she says.To change her workaholic ways, she sought support from her husband. “I asked him to keep me accountable to leaving work at a certain time,” she says. “I had him call me at 6 PM, which felt more reasonable than 5 PM, and stay on the phone until I left the building.”She then took control over her electronics at home. She turned her phone off at 8 PM and only turned it on again at 7 AM. “This allowed me time to unwind in the evening and time to ease into my day without rushing to check email as soon as I turned the alarm off,” she says. “I also stopped sending emails to my team after hours and on the weekends, [because doing that] perpetuates the cycle of frenzy.”Amanda reset the expectations of her manager by making a gradual shift in the number of hours she worked. “I ensured I was still meeting my deadlines, but I started to say no more often so I could prioritize the 20% of things that had 80% of the impact,” she says.Another way she conquered her addiction to work was by learning to meditate. “It helps me stay more present and enjoy life when I am not at work,” she says. “Once I was enjoying life again I realized how much I had made work my worth, and it was easier to continue to gradually cut back because I had hobbies and friends to see again.”Case Study #2: Take control of your use of electronicsMareza Larizadeh has many jobs and many roles: He’s an angel investor in Bonobos, the founder of VC-backed executive search site Doostang, and the CEO of pulsd, an online concierge startup based in New York.A couple of years ago, because of his many professional activities, he realized that “all of [his] time and energy was spent on work.” It was unhealthy and he needed to put work in perspective. “It was time for a change,” he says.Mareza created several “super simple” rules to limit his use of electronics. For instance, he only checks email at 5 PM during the work week. “[This way] I’m less tempted to break my flow with constant email checks,” he says. “When someone has something important to tell me, they will call or CC a colleague, who will then tell me I need to respond to something quickly.”As a founder, Mareza used to be always “on call” for emergencies, but since the company has grown he delegates noncritical issues to colleagues on weekends.Mareza has an iPhone, but he rarely checks email on Saturdays and Sundays. He doesn’t text often, and he turns off notifications for most apps. “You can live in the moment and appreciate the people you are with once you disconnect for a few hours,” he says.Most importantly, he started prioritizing his health and well-being. “I sleep more and travel less,” he says.The changes had a positive effect on him and his coworkers. “They see how much happier I am when I am well rested,” he says. “Everyone at the company is doing better.”', 'intro to work addiction', '1681865836.jpg', 6, '2023-04-16 12:23:43', '2023-04-18 22:57:16', '1'),
(26, 'Consider the following: Works long hours. Carries wireless device everywhere. On the phone at kid’s soccer game. Checks in frequently over vacation.Does this describe your life? If you’re like the hundreds of executive education students I teach each year at the Harvard Business School, you point to the hours you work, the places from which you work (even on vacation), the times at which you work (even when supposed to be spending time with family and friends), the fact that your wireless device is never far from reach, and declare without any hesitation that you’re always “on”. And, you probably declare yourself an addict.But what are you addicted to? Your wireless device? Work? These are the most common suspects, but I would argue that many — if not most — of us are addicted to success. We are successaholics not workaholics. We’re obsessed with work because of the satisfaction we get from the kudos for achievement, not because of some deep-seeded satisfaction from working long hours, as an end in itself. And what this means is that it is the definition of success, not some ingrained personality issue, that is at the source of why we are always on. If this is true, then turning off requires changing what we value in each other, not changing ourselves.Tad, a participant in one of my recent studies, is a great example of how easy it is to confuse a successaholic with a workaholic. Tad is a consultant at the Boston Consulting Group. When I proposed the idea of turning off for discrete periods of time — with the full support of his manager — Tad explained to me: “It’s going to be really hard to let go… even on weekends, I cannot let go… I’m always thinking about work.” Tad was used to taking his Blackberry everywhere and whether during work meetings, his best friend’s wedding, or quiet moments with his nine month old daughter, he kept checking it to avoid being caught off guard with the “oh my god, Tad, this is blowing up” call.But Tad was part of a team on which I was conducting an experiment. The experiment was to have each team member turn off for one night a week. Starting at 6 pm, for that one night, they were to do absolutely no work — not even to check their wireless devices. They were to completely disengage from work. Each person’s night off was set well in advance and was not supposed to change, even if suddenly there was a client deliverable the next day. And, each week the team met to discuss their progress, with each team member being required to share whether they had taken their night off, and if not, why not. Suddenly, always being on was not the badge of honor that it once had been. Rather, team members were publicly applauded for taking their time off — even the night before a major deliverable — and they were shunned for failing to take their nights off.Tad like so many others was initially resistant to this plan. He saw this as causing more stress not less. As he said, it interfered with his ability to keep on top of what was happening, always.Yet, several weeks into the experiment, Tad reported with delight: “It was the first Saturday in three years I did not check my Blackberry!” And soon it was other times as well. Disconnecting from work had once been almost inconceivable and undesirable, but as a result of being “forced” to work with his teammates to do it and make it possible for each other, Tad learned that disconnecting was not just feasible but it enabled him to be more productive and fulfilled. He became so taken with the positive benefits for himself, and his teams, that he went on to become one of the biggest champions of managing teams that worked together to turn off for discrete and predictable units of time each week.Watching Tad, and so many others like him, taught me that people who appear to be thriving on the nonstop workweek are really thriving on a job well done. And, as soon as the definition of success changes, so too does their behavior. Tad who had once been convinced he was a workaholic discovered he could not only turn off, but he treasured the opportunity to do so. Note: Had Tad been a workaholic as he believed he was, changing what was expected of him by others would have had little effect on his experience of turning off.What about you? Are you addicted to your work? Or is it really the validation that comes from doing a good job? What would happen if people started holding it against you when you stayed late, emailed after certain hours, called in on vacation? Your first reaction is likely one of anxiety, not delight. But push yourself to think harder about what would happen. Can you even imagine how you might spend the time off? What if you were not only expected to turn off, but your team provided you a support network to make it possible?My advice: Try working with your team to make this happen — support each other in turning off and you might be surprised how much you like it.', 'signs of being addicted', '1681865861.jpg', 6, '2023-04-16 12:25:04', '2023-04-18 22:57:41', '1'),
(27, 'If you’re hoping to achieve a healthier relationship between work and personal life, avoiding work addiction, here’s our useful tips to follow. Although we appreciate this is easier said than done, especially if you’re a business owner or within a high-powered position. However, it is vital to prioritise your mental health.Find A Comfortable Position In WorkThis position will be different for everyone. Yet, finding a place where you’re truly happy with your salary, level of responsibilities and workload is important. By reaching this level of comfort, you’ll have the energy and motivation to reach comfort in your personal life. Avoid overworking yourself or aiming for that next promotion due to pressure. If you’re unable to find that level of comfort in your current role, maybe it’s time for a new job?Open Up To Your Family And FriendsAlways discuss your balance with your family and friends. They are front row witnesses of your balance, observing your mental health and happiness. Having open discussions about what’s important in your personal life will help you balance the scales with work.Only Complete Your Current ResponsibilitiesAvoid work addiction by only committing to your current responsibilities. In short, only work your contracted hours which you get paid for. Avoid taking work home, working late into the evenings or weekends. We appreciate this may be easier said than done. However, it is vital to have some downtime and self-care.Always Consider Your Own Mental HealthYour own mental health is the most important aspect of the balance. It’s more important than a job or a social event. Always consider the way you feel before work. Work addiction can cause life-changing mental health issues. Avoid this by prioritizing your feelings and mind frame.If you’re still struggling to maintain a healthy work-life balance, and believe work addiction may be impacting your life, feel free to speak to our team here at Rehab Clinics Group.We can help you find the balance through a psychologically driven treatment plan. Treatment options such as cognitive behavioural therapy and counselling sessions will be encouraged to help you overcome work addiction.Get in touch today to achieve a healthy balance between work and your personal life.', 'Tips For Overcoming Work Addiction', '1681865878.jpg', 6, '2023-04-16 12:25:40', '2023-04-18 22:57:58', '1'),
(29, 'How to Overcome Food AddictionWhat it isEffects on the brainSymptomsSeriousnessAvoiding junk foodFirst stepsGetting helpBottom lineThe effects of certain foods on the brain make it hard for some people to avoid them.Food addiction operates similarly to other addictions, which explains why some people can’t control themselves around certain foods — no matter how hard they try.Despite not wanting to, they may repeatedly find themselves eating large amounts of unhealthy foods — knowing that doing so may cause harm.This article examines food addiction and provides tips to overcome it.What is food addiction?Food addiction is an addiction to junk food and comparable to drug addiction.It’s a relatively new — and controversial — term, and high quality statistics on its prevalence are lacking (1Trusted Source).Food addiction is similar to several other disorders, including binge eating disorder, bulimia, compulsive overeating, and other feeding and eating disorders.SUMMARYFood addiction is a highly controversial concept, though most studies suggest it exists. It works similarly to drug addiction.Effects on the brainFood addiction involves the same areas of the brain as drug addiction. Also, the same neurotransmitters are involved, and many of the symptoms are identical (2Trusted Source).Processed junk foods have a powerful effect on the reward centers of the brain. These effects are caused by brain neurotransmitters like dopamine (3).The most problematic foods include typical junk foods like candy, sugary soda, and high fat fried foods.Food addiction is not caused by a lack of willpower but believed to be caused by a dopamine signal that affects the biochemistry of the brain (4Trusted Source).SUMMARYFood addiction is thought to involve the same neurotransmitters and areas of the brain as drug addiction.8 symptoms of food addictionThere is no blood test to diagnose food addiction. As with other addictions, it’s based on behavioral symptoms.Here are 8 common symptoms:frequent cravings for certain foods, despite feeling full and having just finished a nutritious mealstarting to eat a craved food and often eating much more than intendedeating a craved food and sometimes eating to the point of feeling excessively stuffedoften feeling guilty after eating particular foods — yet eating them again soon aftersometimes making excuses about why responding to a food craving is a good idearepeatedly — but unsuccessfully — trying to quit eating certain foods, or setting rules for when eating them is allowed, such as at cheat meals or on certain daysoften hiding the consumption of unhealthy foods from othersfeeling unable to control the consumption of unhealthy foods — despite knowing that they cause physical harm or weight gainIf more than four to five of the symptoms on this list apply, it could mean there’s a deeper issue. If six or more apply, then it’s likely a food addiction.SUMMARYThe main symptoms of food addiction include craving and binging on unhealthy foods without being hungry and an inability to resist the urge to eat these foods.It’s a serious problemThough the term addiction is often thrown around lightly, having a true addiction is a serious condition that typically requires treatment to overcome.The symptoms and thought processes associated with food addiction are similar to those of drug abuse. It’s just a different substance, and the social consequences may be less severe.Food addiction can cause physical harm and lead to chronic health conditions like obesity and type 2 diabetes (5Trusted Source).In addition, it may negatively impact a person’s self-esteem and self-image, making them unhappy with their body.As with other addictions, food addiction may take an emotional toll and increase a person’s risk of premature death.SUMMARYFood addiction increases the risk of obesity and type 2 diabetes. Excessive weight may also affect a person’s self-esteem.How to know whether avoiding junk food is worth the sacrificeCompletely avoiding junk foods may seem impossible. They’re everywhere and a major part of modern culture.However, in some cases, entirely abstaining from certain trigger foods can become necessary.Once the firm decision to never eat these foods again is made, avoiding them may become easier, as the need to justify eating — or not eating — them is eliminated. Cravings may also disappear or decrease significantly.Consider writing a list of pros and cons to think through the decision.Pros. These may include losing weight, living longer, having more energy, and feeling better every day.Cons. These may include not being able to eat ice cream with family, no cookies during the holiday season, and having to explain food choics.Write everything down — no matter how peculiar or vain it may seem. Then compare the two lists and ask if it’s worth it.If the answer is a resounding “yes,” be assured that it’s the right decision.Also, keep in mind that many of the social dilemmas that may show up in the con list can often easily be solved.SUMMARYTo overcome food addiction, a person should be sure that eliminating certain foods is the right thing to do. If there’s uncertainty, writing down the pros and cons may help make the decision.First steps in overcoming food addictionA few things can help prepare for giving up junk foods and make the transition easier:Trigger foods. Write down a list of the foods that cause cravings and/or binges. These are the trigger foods to avoid completely.Fast food places. Make a list of fast food places that serve healthy foods and note their healthy options. This may prevent a relapse when hungry and not in the mood to cook.What to eat. Think about what foods to eat — preferably healthy foods that are liked and already eaten regularly.Pros and cons. Consider making several copies of the pro-and-con list. Keep a copy in the kitchen, glove compartment, and purse or wallet.Additionally, don’t go on a diet. Put weight loss on hold for at least 1–3 months.Overcoming food addiction is difficult enough. Adding hunger and restrictions to the mix is likely to make things harder.After taking these preparatory steps, set a date in the near future — like the coming weekend — from which point onward the addictive trigger foods won’t be touched again.SUMMARYTo overcome food addiction, it’s important to plan. Make a list of trigger foods and know what is going to be eaten instead.Consider seeking helpMost people with addiction attempt to quit several times before they succeed in the long run.While it’s possible to overcome addiction without help — even if it takes several tries — it can often be beneficial to seek help.Many health professionals and support groups can aid in overcoming your addiction.Finding a psychologist or psychiatrist who has experience in dealing with food addiction can provide one-on-one support, but there are several free group options available as well.These include 12-step programs like Overeaters Anonymous (OA), GreySheeters Anonymous (GSA), Food Addicts Anonymous (FAA), and Food Addicts in Recovery Anonymous (FA).These groups meet regularly — some even via video chat — and can offer the support needed to overcome addiction.SUMMARYConsider seeking help for food addiction. Try support groups like Overeaters Anonymous or book an appointment with a psychologist or psychiatrist who specializes in food addiction.The bottom lineFood addiction is a problem that rarely resolves on its own. Unless a conscious decision to deal with it is made, chances are it will worsen over time.The first steps to overcoming the addiction include listing the pros and cons of quitting trigger foods, finding healthy food alternatives, and setting a fixed date to start the journey toward health.Consider seeking help from a health professional or free support group. Always remember that you’re not alone.Editor’s note: This piece was originally reported on July 30, 2017. Its current publication date reflects an update, which includes a medical review by Timothy J. Legg, PhD, PsyD.', 'recovering from junk food', '1687526750.jpg', 2, '2023-04-16 11:27:33', '2023-06-23 10:25:50', '0'),
(30, 'Tips for Overcoming Food AddictionYou don’t have to look very far to find the link between food addictions and rising obesity rates. According to the Centers for Disease Control & Prevention, as much as 35.7 percent of Americans were diagnosed as obese in 2006. With the increasing amount of preservatives and additives used in food processing plants, more and more people are finding it hard to say “no” to extra helpings when they know they should.Weight-wise, once a person reaches the point where enough is enough, the process of overcoming food addiction begins. Tips for overcoming food addiction include identifying destructive eating patterns, making healthy food choices and learning how to deal with food cravings.Making Good Food ChoicesFor some people, sweets and salty food may seem especially tasty. For others, it’s the tasty, high-calorie foods that hold an appeal. While taste definitely plays a pivotal role in whether someone likes or craves a certain type of food, other factors may also be driving an addiction.The after-effects from a big, heavy Thanksgiving dinner offers a prime example of how food can affect a person’s body by triggering cravings and effecting chemical changes. After such a meal, some people become sleepy or sluggish. Others may start to feel irritable or depressed. These types of effects only happen when chemical changes in the brain take place.More oftentimes than not, it’s the high-calorie, low nutrient foods that trigger an addiction response and make a person want more. So, overcoming food addiction starts with learning to make good food choices. By making good food choices on a daily basis, over time, the body can flush out the “bad food” residues. Like leftover drugs residues in the body, bad food residues can trigger cravings for more of the same. Once the body is cleaned-out, the source of the cravings is gone.Identify Trigger FoodsKnowing the types of foods that trigger cravings can help you develop strategies for avoiding these foods and overcoming food addiction. As food remains a daily living requirement and always accessible, going cold turkey on trigger foods may be more than a person can handle when going it alone. The potential for overwhelming cravings can make relapse that much easier, leaving a person feeling depressed and eating even larger portions than before.By gradually reducing trigger foods and replacing them with healthy food choices like fruits and veggies, the process of overcoming food addiction becomes less stressful, both physically and psychologically. Over time, the body will come to expect smaller and smaller portions of the trigger foods, which is the overall goal when overcoming food addiction.Countering Food CravingsIn order to counter food cravings, it helps to have a record of the actual craving patterns that develop from day-to-day. By keeping a food diary, you can keep track the times of day cravings occur and the types of foods craved. In this way, overcoming food addiction becomes a matter of having substitute (healthy) foods ready when the vulnerable times of day hit.', 'advises of how to reduce eating junk food', '1687522812.jpg', 2, '2023-04-16 11:31:04', '2023-06-23 09:20:12', '0'),
(31, 'Short-Term and Long-Term Impacts of Sport AddictionIn the short term, sport addiction is unlikely to have any serious consequences (apart from the potential for injury); indeed, the benefits for an individual’s fitness and physique may prove dangerously alluring. In the long term, however, the condition can have very serious consequences for physical and mental health: injury sustained during exercise can lead to permanent impairment or even death, while excessive training has also been linked to premature osteoporosis as a result of an exhaustion of the autonomic nervous system.Mental health disorders which develop as a consequence of a sport addiction can have permanent and extremely damaging consequences: certain eating disorders are recognised as being highly dangerous (anorexia nervosa in particular is considered the single most dangerous mental disorder in terms of the number of sufferers who die each year) while major depressive disorder can also lead to self-harm and even suicide. The effects of sport addiction upon an individual’s relationships, professional and academic prospects and financial well-being can also be permanently damaging.How sport addiction affects the brainAs previously mentioned, behavioural addictions are a disorder of the brain’s reward system, with abnormal levels of dopamine produced by repeated engagement in addictive behaviour affecting the part of the brain known as the amygdala and the ventral tegmental area. Over time, tolerance develops: the behaviour in question needs to be repeated with ever greater frequency or greater intensity in order to produce the same effect as originally (and cessation of that behaviour leads to cravings to repeat it, and over the longer term to the development of withdrawal syndrome).Similarly, high levels of endorphins produced by regular exercise can also lead to the development of tolerance, requiring ever-greater endorphin production in order to feel the same positive effects as previously.Sport which presents the risk of head injury can also, obviously, have consequences for the brain, with brain damage having a huge variety of potential ramifications depending upon the area/s of the brain affected. Repeated blows to the head such as those which can be sustained in martial arts (including boxing), rugby and even football (by heading the ball) can damage the frontal lobe, which regulates impulse control; consequences can include depression, mood swings, emotional instability and even suicidal ideation.Get Confidential Help NowCall our admissions line 24 hours a day to get help.02038 115 619Sport Addiction and Substance AbusePeople who suffer from behavioural addictions are much more likely than average to engage in substance abuse. Sport addiction, in particular, is associated with the consumption of performance-enhancing drugs, some of which can be highly addictive (including stimulants such as cocaine and amphetamine). The pressure placed on competitive sportspeople to achieve good results can lead them to self-medicate with alcohol and/or illegal drugs, while some prescription medication intended to relieve stress and anxiety can also prove habit-forming.UK RehabInjuries sustained whilst participating in sport or exercise can be very painful and debilitating. The treatment of chronic pain with opioids is one of the major contributors to the opioid epidemic currently affecting the USA and other countries, and while that epidemic is not yet being mirrored here in the UK, the abuse of pain medication is still a significant problem – and can lead to an individual’s turning to illegal drugs, including heroin.Treatment for Sport AddictionFortunately, there are now a good number of highly capable facilities and organisations across the UK treating addiction, and a growing number of them now treat sport addiction specifically. A range of treatment methods and approaches are employed, with psychotherapy typically at the core.CBTCognitive behavioural therapy (CBT) aims at uncovering and addressing negative patterns of behaviour and thought processes, through dialogue between the therapist and patient. It is considered the backbone of much addiction treatment, with a long history of proven success.Family therapyIn almost all cases of addiction, family members also suffer alongside the addict him/herself. Family therapy looks at the addiction in the context of the whole family, and seeks to provide healing for family members as well as the addict.12-step programmesAt 12-step programme is a set of 12 principles guiding a person’s recovery from addiction. The first 12 step programme was developed by the founders of Alcoholics Anonymous in the 1930s, and this original programme has gone on to be the model for a great many variants tackling different types of addiction.Support groupsSupport groups provide ongoing assistance to recovering addicts, in the form of a peer group comprising individuals who themselves have been through addiction. Attendance at meetings is usually free with the sole criterion for attending being a commitment to live life free of addiction.Prevention for Sport AddictionThe usual starting point for preventing addiction is abstinence, but in the case of exercise this is not merely challenging but profoundly unhealthy. Instead, firm limits must be set around the frequency and intensity of exercise (a limited number of periods of exercise per week, for no longer than a set time). Goals should be set in collaboration with a sports therapist who can determine which might be attainable within the limited exercise periods available. Eating healthily is a crucial component of staying fit, but a preoccupation with food which risks turning into an eating disorder should be avoided. It may prove useful to speak with an addiction specialist about the optimal approach to exercise and diet.Sport Addiction Facts/StatisticsBetween 3% and 8% of gym users suffer from an addiction to exercise.Fewer than 5% of adults engage in at least 30 minutes of physical activity daily.Up to 7% of students studying sports science at university are exercise addicts.It is estimated that 25% amateur runners, 50% of marathon runners, and 52% of triathletes suffer from an exercise addiction.One study estimates that approximately 33% of sex addicts are also addicted to exercise.', 'sport addiction', '1685312060.png', 5, '2023-04-16 12:15:47', '2023-05-28 20:14:20', '0');
INSERT INTO `articles` (`id`, `content`, `desc`, `img`, `cate_id`, `created_at`, `updated_at`, `user_type`) VALUES
(32, 'Sport Addiction ExplainedMillions of Britons take part in sport regularly, and for the vast majority of us, it is an enjoyable means of staying fit and a great way to meet people. Unfortunately, for some people, sport and exercise become something much more negative and damaging: an addiction.What is Sport Addiction?Sports addiction is a condition in which the affected individual feels a compulsion to engage in sport or physical exercise regardless of any negative consequences this may have on their physical and mental health and upon any other aspects of their life.The benefits of exercise are well-known, and in today’s society – in which the obesity epidemic is a huge (and growing) problem claiming tens of thousands of lives each year – the idea that people may be suffering (and even dying) as a result of too much exercise may seem a bizarre one.However, people suffering from sports addiction are either unable to recognise the line beyond which healthier exercise becomes something much more damaging, or can recognise that line but are unable to stop themselves from crossing it.Exercise addicts are compelled to perform excessive amounts of exercise, with a deleterious impact upon their physical and mental well-being and possibly to the detriment of their personal and professional/academic lives and their financial security. Often co-occurring with eating disorders and/or substance abuse disorders, and featuring behaviours which are often also symptomatic of other mental health conditions and disorders, sport addiction is often difficult to diagnose. Nevertheless, there is little doubt that the behaviours which characterise sport addiction can be dangerous and even in the worst cases deadly, and that anyone suffering from it should seek help as soon as they feel able to acknowledge their condition.Other names (also known as exercise addiction)As mentioned above, in this article “sport addiction” and “exercise addiction” are used interchangeably. Other terms used to describe the condition include exercise dependence, compulsive exercising, exercise abuse, compulsive athleticism, compulsive working out, obligatory exercise and anorexia athletica. In common (i.e., non-medical) parlance, someone considered to be suffering from the condition might be called an exercise addict, an exerciseaholic, a workoutaholic, a gymaholic or a gym fanatic; of these terms, only the first is likely to be used in a medical setting.Sport Addiction ExplainedMillions of Britons take part in sport regularly, and for the vast majority of us, it is an enjoyable means of staying fit and a great way to meet people. Unfortunately, for some people, sport and exercise become something much more negative and damaging: an addiction.What is Sport Addiction?Sports addiction is a condition in which the affected individual feels a compulsion to engage in sport or physical exercise regardless of any negative consequences this may have on their physical and mental health and upon any other aspects of their life.The benefits of exercise are well-known, and in today’s society – in which the obesity epidemic is a huge (and growing) problem claiming tens of thousands of lives each year – the idea that people may be suffering (and even dying) as a result of too much exercise may seem a bizarre one.However, people suffering from sports addiction are either unable to recognise the line beyond which healthier exercise becomes something much more damaging, or can recognise that line but are unable to stop themselves from crossing it.Exercise addicts are compelled to perform excessive amounts of exercise, with a deleterious impact upon their physical and mental well-being and possibly to the detriment of their personal and professional/academic lives and their financial security. Often co-occurring with eating disorders and/or substance abuse disorders, and featuring behaviours which are often also symptomatic of other mental health conditions and disorders, sport addiction is often difficult to diagnose. Nevertheless, there is little doubt that the behaviours which characterise sport addiction can be dangerous and even in the worst cases deadly, and that anyone suffering from it should seek help as soon as they feel able to acknowledge their condition.Get Confidential Help NowCall our admissions line 24 hours a day to get help.02038 115 619UK RehabOther names (also known as exercise addiction)As mentioned above, in this article “sport addiction” and “exercise addiction” are used interchangeably. Other terms used to describe the condition include exercise dependence, compulsive exercising, exercise abuse, compulsive athleticism, compulsive working out, obligatory exercise and anorexia athletica. In common (i.e., non-medical) parlance, someone considered to be suffering from the condition might be called an exercise addict, an exerciseaholic, a workoutaholic, a gymaholic or a gym fanatic; of these terms, only the first is likely to be used in a medical setting.The confusion over and controversy of exercise/sport addictionAs is the case with various problematic behaviours and behaviour patterns, there is no universal consensus within the medical and psychiatric communities as to whether or not exercise addiction should be recognised as a distinct condition. No single classification of the condition exists to which the majority of doctors are happy to refer.It is not, for example, listed as an independent disorder in the current (fifth: DSM 5) edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM) of the American Psychiatric Association, probably the leading diagnostic publication worldwide focusing exclusively on mental health.Alongside this problematic lack of clarity, many authorities disagree about exactly when healthy exercise becomes unhealthy and subsequently develops into an addiction. This is partly because of a lack of empirical evidence – and even the extent to which behavioural addictions generally merit their own distinct diagnostic frameworks.Because exercise is promoted as having numerous health benefits as well as being frequently prescribed as part of a holistic addiction recovery programme such as that which may be provided as part of a stay in residential rehabilitation. There is a natural resistance to the idea that it could be an addiction in its own right, even though the biochemical mechanisms driving behavioural addiction have been identified, and exercise addiction has various similarities even with drug addiction, including the phenomenon of withdrawal syndrome.At present – and until a consensus is reached regarding any possible diagnostic framework for exercise addiction – how any individual’s case is assessed depends to a great extent on the attitude of the diagnosing physician towards exercise addiction’s status as a distinct disorder (or otherwise).Healthy Fitness vs Exercise/Sport AddictionOne cause of the aforementioned lack of diagnostic unanimity is the difficulty in differentiating between healthy and addictive behaviour when it comes to exercise and physical fitness, especially in individuals who are striving to achieve weight loss for reasons not relating to a mental disorder, and in those who are training for specific objectives including competitions.Sport Addiction ExplainedMillions of Britons take part in sport regularly, and for the vast majority of us, it is an enjoyable means of staying fit and a great way to meet people. Unfortunately, for some people, sport and exercise become something much more negative and damaging: an addiction.What is Sport Addiction?Sports addiction is a condition in which the affected individual feels a compulsion to engage in sport or physical exercise regardless of any negative consequences this may have on their physical and mental health and upon any other aspects of their life.The benefits of exercise are well-known, and in today’s society – in which the obesity epidemic is a huge (and growing) problem claiming tens of thousands of lives each year – the idea that people may be suffering (and even dying) as a result of too much exercise may seem a bizarre one.However, people suffering from sports addiction are either unable to recognise the line beyond which healthier exercise becomes something much more damaging, or can recognise that line but are unable to stop themselves from crossing it.Exercise addicts are compelled to perform excessive amounts of exercise, with a deleterious impact upon their physical and mental well-being and possibly to the detriment of their personal and professional/academic lives and their financial security. Often co-occurring with eating disorders and/or substance abuse disorders, and featuring behaviours which are often also symptomatic of other mental health conditions and disorders, sport addiction is often difficult to diagnose. Nevertheless, there is little doubt that the behaviours which characterise sport addiction can be dangerous and even in the worst cases deadly, and that anyone suffering from it should seek help as soon as they feel able to acknowledge their condition.Get Confidential Help NowCall our admissions line 24 hours a day to get help.02038 115 619UK RehabOther names (also known as exercise addiction)As mentioned above, in this article “sport addiction” and “exercise addiction” are used interchangeably. Other terms used to describe the condition include exercise dependence, compulsive exercising, exercise abuse, compulsive athleticism, compulsive working out, obligatory exercise and anorexia athletica. In common (i.e., non-medical) parlance, someone considered to be suffering from the condition might be called an exercise addict, an exerciseaholic, a workoutaholic, a gymaholic or a gym fanatic; of these terms, only the first is likely to be used in a medical setting.The confusion over and controversy of exercise/sport addictionAs is the case with various problematic behaviours and behaviour patterns, there is no universal consensus within the medical and psychiatric communities as to whether or not exercise addiction should be recognised as a distinct condition. No single classification of the condition exists to which the majority of doctors are happy to refer.It is not, for example, listed as an independent disorder in the current (fifth: DSM 5) edition of the Diagnostic and Statistical Manual of Mental Disorders (DSM) of the American Psychiatric Association, probably the leading diagnostic publication worldwide focusing exclusively on mental health.Alongside this problematic lack of clarity, many authorities disagree about exactly when healthy exercise becomes unhealthy and subsequently develops into an addiction. This is partly because of a lack of empirical evidence – and even the extent to which behavioural addictions generally merit their own distinct diagnostic frameworks.Because exercise is promoted as having numerous health benefits as well as being frequently prescribed as part of a holistic addiction recovery programme such as that which may be provided as part of a stay in residential rehabilitation. There is a natural resistance to the idea that it could be an addiction in its own right, even though the biochemical mechanisms driving behavioural addiction have been identified, and exercise addiction has various similarities even with drug addiction, including the phenomenon of withdrawal syndrome.At present – and until a consensus is reached regarding any possible diagnostic framework for exercise addiction – how any individual’s case is assessed depends to a great extent on the attitude of the diagnosing physician towards exercise addiction’s status as a distinct disorder (or otherwise).UK RehabHealthy Fitness vs Exercise/Sport AddictionOne cause of the aforementioned lack of diagnostic unanimity is the difficulty in differentiating between healthy and addictive behaviour when it comes to exercise and physical fitness, especially in individuals who are striving to achieve weight loss for reasons not relating to a mental disorder, and in those who are training for specific objectives including competitions.Even including such outliers, only a small proportion (between 3% and 8%) of gym users can be viewed as having a problem which may be considered an addiction, reporting a sufficient proportion of the signs and symptoms described below for their cases to be considered clinically significant.Many people who engage in harmless levels of exercise share reasons for doing so with exercise addicts: weight management, the quest for a desired body image, stress relief, and general health are all positive reasons to work out. However, those suffering from sport addiction typically report withdrawal symptoms after a short period without exercising, which non-addicts will not.They may develop cravings for exercise which may have a significant impact upon mood and allow sport and exercise to impact upon their daily lives and relationships in a manner which non-addicts would hardly consider. For example, they could be missing important meetings and/or family or romantic events for the sake of going to the gym.Types of Sports That People Can Get Addicted to Taking Part InTheoretically, any sport could become an addiction, though in practice it is sports which require a good degree of exertion which are likely to prove problematic in this area. Sports such as snooker which are much more demanding mentally than physically (indeed, there are significant debate about whether such activities should be described as “sports” at all rather than “games”) do not offer the same health benefits to participants as do sports which require significant physical effort. That is not to say that an individual cannot become obsessed with playing low-exertion sport, with extremely negative consequences for their relationships and life prospects; however, such an obsession would almost certainly result in a different diagnosis from sport addiction.Logically, a person’s opportunities to participate in a sport decrease proportionally to the number of people required to play that sport, since the greater the number of participants required the harder it is to arrange a game or match of that sport. However that does not of course mean that team sports (for example football, requiring a total of 22 players) cannot be addictive; although opportunities actually to play a team sport may be limited, players can engage in training much more frequently, and in fitness training at any time, day or night.It is, after all, the exercise element of sport which is the addictive behaviour in this condition, so although someone may only play football – to continue the above example – for 90 minutes each week, they may engage in exercise for many hours throughout the week', 'Sport Addiction Introduction', '1687478905.jfif', 5, '2023-04-16 12:18:58', '2023-06-22 22:08:25', '0'),
(33, 'Engaging in social media once in a while is unlikely to be harmful. However, there are negative effects to consider when overusing social media.Some possible downsides of social media include:low self-esteem, which may be prompted by incorrect perceptions that others’ lives are “better” than yoursincreased isolation and lonelinessanxiety or depressiononset of social anxiety disordera fear of missing out (FOMO), which can lead to even more social media usagedisrupted sleep patterns, especially if you use social media right before bedtimedecreased physical activity, which may affect your overall healthpoor grades or work performanceignoring the relationships in your “real” lifereduced ability to empathize with others----------------------------------------------------------------           How can you decrease social media use::Whether you have social media addiction or are just on your apps more than you need to be, the good news is there are ways you can help decrease your overall use.Consider the following tips to help you achieve a healthier balance with social media:Delete your social media apps from your smartphone. While you can still access them from your personal computer, keeping them off your phone may help decrease the amount of time spent on social media overall.Turn off your personal phone during work, as well as during school, meals, and recreational activities. You can also adjust the setting on each social media app so you can turn off certain notifications.Set aside a certain amount of time dedicated to social media per day. Turn on a timer to help keep you accountable.Leave your phone, tablet, and computer out of your bedroom.Take up a new hobby that’s not technology-related. Examples include sports, art, cooking classes, and more.Make it a point to see your friends and family in person when possible.It’s also important to take regular breaks from social media altogether to help find some real-life grounding.Depending on your needs, your break can last for 1 day per week, a whole month, or an entire season. Let yourself be in control of this decision — not your social media account.----------------------------------------------------------------------------------------------------------------------               symptoms::While there exists no official diagnostic term or measurement, problematic social media use can be conceptualized as a non-substance-related disorder, resulting in preoccupation and compulsion to engage excessively in social media platforms despite negative consequences.[14]Problematic social media use is associated with mental health symptoms, such as anxiety and depression in children and young people.[15]A 2022 meta-analysis showed moderate and significant associations between problematic social media use in youth and increased symptoms of depression, anxiety, and stress.[16] Another meta-analysis in 2019, investigating Facebook use and symptoms of depression, also showed an association, with a small effect size.[17] In a 2018 systematic review and meta-analysis, problematic Facebook use was shown to have negative effects on well-being in adolescents and young adults, and psychological distress was also found with problematic use.[18] Frequent social media use was shown in a cohort study of 15- and 16-year-olds to have an association with self-reported symptoms of attention deficit hyperactivity disorder followed up over two years.[19]Decrease in moodA 2016 technological report by Chassiakos, Radesky, and Christakis identified benefits and concerns in adolescent mental health regarding social media use. It showed that the amount of time spent on social media is not the key factor but rather how time is spent. Declines in well-being and life satisfaction were found in older adolescents who passively consumed social media; however, these were not shown in those who were more actively engaged. The report also found a U-shaped, curvilinear relationship between the amount of time spent on digital media and with risk of depression developing, at both the low and high ends of Internet use.[20]Eating disordersAccording to research by Flinders University, social media use correlates with eating disorders. The study found eating disorders in 52% of girls and 45% of boys, from a group of 1,000 participants who used social media.[21]Through the extensive use of social media, adolescents are exposed to images of bodies that are unattainable, especially with the growing presence of photo-editing apps that allow you to alter the way that your body appears in a photo.[22] This can, in turn, influence both the diet and exercise practices of adolescents as they try to fit the standard that their social media consumption has set for them.[22]Instagram users who partake in looking for social media status and compare themselves to others tend to have an increase in negative various psychological effects including body image issues and eating disorders. [23] According to a study that included 2,475 students by doctoral student Madeline Wick and her advisor, Pamela Keel, PhD, a psychology professor at Florida State University, 1 in 3 women responded that they edit their pictures to change their weight and shape before posting a picture to Instagram. [24] A similar study in Australia and New Zeland found 52% of girls ages 13 to 14 with a social media account were very likely to have eating disorders like skipping a meal or overexercising. [25] These various studies found that teenage girls who viewed their retouched photo and compared that to their untouched photo directly harmed their body image. [26] Although this happens amongst various age groups and genders it was found that this tends to have a greater effect on the younger age group of women. [27]Excessive useOne can evaluate their social media habits and behavior toward it to help determine if an addiction is present. Addictions are a certain type of impulse control disorder, which may lead one to lose track of time while using social media. For instance, one\'s psychological clock may run slower than usual, and the user\'s self-consciousness is compromised.[28] Therefore, individuals may passively consume media for longer amounts of time. Psychologists estimate that as many as 5 to 10% of Americans meet the criteria for social media addiction today.[29] Addictive social media use will look much like that of any other substance use disorder, including mood modification, salience, tolerance, withdrawal symptoms, conflict, and relapse. In the digital age, it is common for adolescents to use their smartphones for entertainment purposes, education, news, and managing their daily life. Therefore, adolescents are further at risk for developing addictive behaviors and habits. Many medical experts have looked at the survey and come up with a clear conclusion, saying that teenagers\' excessive smartphone use has an impact on their behavior and even their mental health.[30] If the excessive use of social media and the platforms encompassed therein have proven to cause mental health issues, eating disorders, and lowered self-esteem, and the use of such media has been shown to be addictive in some form or another, medically there should be an avenue to treat the use or excessive use of the media platforms. For example, a study involving 157 online learners showed that, on average, learners on massive open online courses spend half of their online time on YouTube and social media, and less than 2% of visited websites accounted for nearly 80% of their online time.[31] The excessive use is causing underlying health conditions that in themselves are treatable, but if these issues stem from the use of social media platforms, the addictive nature of these platforms should be addressed in a way to reduce or eradicate the health-related or mental related effects resulting. More studies need to be done, more funding has to be provided, and the addiction to such platforms should be seen as a true addiction and treated as such, and not simply discarded as a millennial issue.[32]Social anxietySocial media allows users to openly share their feelings, values, relationships, and thoughts. With the platform social media provides, users, can freely express their emotions. However, social media may also be a platform for discrimination and cyberbullying.[33] There is also a strong positive correlation between social anxiety and social media usage,and in particular between cyberostracism and social media disorder.[34] The defining feature of social anxiety disorder, also called social phobia, is intense anxiety or fear of being judged, negatively evaluated, or rejected in a social or performance situation.[35][36][37][38] Many users with mental illnesses, such as social anxiety, go to the internet as an escape from reality, so they often withdraw from in-person communication and feel most comfortable with online communication. People usually act differently on social media than they do in person, resulting in many activities and social groups being different when using social media.[39] The pros and cons of social media are heavily debated; although using social media can satisfy personal communication needs, those who use them at higher rates are shown to have higher levels of psychological distress.[40]Lowered self-esteemLow self-esteem has generally had some sort of connection to serious mental health illnesses such as depression. some studies have been done to find if social media platforms have any sort of correlation to low self-esteem. One such study in which participants were given the Rosenberg Self-Esteem Scale to rate their self-esteem based on their social media usage found that participants that used Facebook tended to rate themselves more poorly on their general self-esteem.[41]In 2022 a case was successfully litigated that implicated a social media platform in the suicide of a Canadian teenage girl named Amanda Todd who died by hanging . This was the first time that any social media platform was held liable for a user\'s actions. While the question of what category problematic social media use falls in is still being developed and further researched, the policies and regulations of social media have already started to change. The interest now falls on implementing new laws regarding these penalties and how individuals can aim to keep their well-being safe along with the platforms that they are using, especially when it comes to privacy.-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                 What are the signs and symptoms of social media addiction::Several signs indicate that someone may have an addiction to social media. The most common signs and symptoms of social media addiction are listed below.Lying about the amount of time spent online: Individuals who suffer from social media addiction are often embarrassed about the significant amount of time spent on social media. As a result, people who are addicted to social media will lie to loved ones about the time spent scrolling on different platforms.Relying on social media as a coping mechanism: A person may increasingly use social media to cope with problems or negative feelings such as boredom, social anxiety, stress, or loneliness.Feeling restless when unable to check social media: Individuals who struggle with social media addiction may become restless or troubled when unable to use social media. A person may be aware of the negative feelings that being unable to access social media can cause, but may often feel like the situation is uncontrollable.Neglecting school- or work-related responsibilities: As social media continues to consume a big chunk of a person’s time and energy, school- or work-related responsibilities may be neglected.Withdrawing from friends and family: Personal relationships may suffer as a social media addict prefers to spend more time in the virtual world. A person may withdraw from family and friends, having difficulty staying in the moment as one’s full attention is given to social media.-------------------------------------------                                       How social media affects the brain::Social media affects the brain by activating its reward circuitry and releasing dopamine in the process. Dopamine is a neurotransmitter that creates feelings of pleasure and want.Being on social media increases dopamine signals in the brain. The brain then identifies social media use as a rewarding experience that a person does for survival and therefore needs to be repeated. This mechanism of action may explain why is social media addictive for some people.Rewards in social media come in the form of positive feedback from other users. Since these rewards increase the secretion of the feel-good hormone dopamine, people tend to look forward to positive feelings and will constantly check social media as a result.------------------------------------------                            What are the types of social media addiction::People may develop an addiction to certain activities carried out on social media. The five types of social media addiction are listed below.Facebook addiction: Described as the excessive and compulsive use of Facebook to boost one’s mood despite negative consequences. Problematic Facebook use interferes with a person’s life on a daily basis.Nomophobia: A shortened form of “no mobile phone phobia,” it describes a condition in which people develop fear and anxiety when left without a mobile device. Having an uncharged phone or being without cellular service can cause panic attacks in some people who suffer from the disorder.Instant messaging: The compulsive need for online interactions through instant messaging services, including WhatsApp and Facebook Messenger. The disorder involves a preoccupation with instant messaging and may cause a person to check their phone from time to time to see new messages or texts.Microblogging: Refers to the excessive use of microblogs, a form of traditional blogging that involves short pieces of content that can be in the form of audio, text, or video. One example of a popular microblogging site is Twitter.Online dating: The problematic use of online dating sites and applications. People may prefer forming virtual relationships over mobile dating applications, leading to isolation from family or friends and damage to personal relationships.---------------------------------------------------                              How can social media affect mental health::Social media can affect mental health by causing anxiety, depression, low self-esteem, and other mental health challenges. Several studies have found an association between excessive social media use and certain mental health conditions.Social media platforms offer individuals a place where there is an endless stream of opportunities for comparisons and feedback. This makes a person search for validation on social media, which the person sees as a substitute for a deep connection that can effectively be developed in real-life situations.Problematic social media use can increase one’s risk of being bullied online or becoming a cyberbully. Through different platforms, people can spread malicious rumors and hurtful messages that can be emotionally scarring. Oftentimes, cyberbullies can cause emotional damage while remaining anonymous.The great impact that social media platforms have on a person’s mental health can provide a clue as to exactly what is social media addiction and how serious its repercussions can be. Cyberbullying victims are often left with lasting emotional trauma, self-injurious behavior, and even suicidal thoughts.', 'What are the downsides of social media addiction:', '1681865644.jpeg', 1, '2023-04-16 12:07:20', '2023-04-18 22:54:04', '0'),
(34, 'I was in high school when Facebook took off. This was in the mid-2000s, when the platform had a “wall” for public conversations, and you’d often post an uncurated album of 75 photos from a day out with your friends.As an introverted, socially awkward teenager whose in-person interactions never seemed to go right, I liked the way Facebook allowed me to portray myself as I wanted. I created a profile that showcased my favorite quotes from classic movies and the music I had on repeat. In the digital world, I was more open and candid. I got to know people that I wouldn’t talk to face-to-face—and I often used the platform to vent about my classes.My social media use seemed harmless. But I soon noticed that my attention span and mental capacity were suffering. When trying to finish school assignments, I’d check Facebook repeatedly. Each day I spent hours scrolling through its pages. It got so bad that I had to temporarily deactivate my profile ahead of my final exams to eliminate temptation.But after they ended I was back at it. I remember how, during a weeklong trip I took with my family that summer, we had no computer access (this was before smartphones), and I kept thinking, I can’t wait to get home to check Facebook. I’ll have more notifications since I’ve been away. Most notifications I got were surface-level comments or passive “likes” that didn’t really mean anything, yet it was so hard to stop checking them.I knew that I should have been reading a book—or pursuing some enriching hobby—instead. I blamed myself, thinking, This is how I’ve chosen to spend my time. But I later learned that social media platforms are addictive by design: The notifications they’re built around trigger a dopamine release in our brains, just as recreational drugs and gambling do. My Facebook addiction wasn’t my fault.As the New York Times reporter Max Fisher explains in his new book, The Chaos Machine, “Dopamine creates a positive association with whatever behaviors prompted its release, training you to repeat them….When that dopamine reward system gets hijacked, it can compel you to repeat self-destructive behaviors. To place one more bet, binge on alcohol—or spend hours on apps even when they make you unhappy.”Fisher says that the notifications themselves aren’t the problem. But they become one when social media platforms pair them with positive affirmation—those likes, follows, updates from friends, and photographs of family, pets, food, and beautiful scenery.In another new book, Digital Madness, the psychologist Nicholas Kardaras explains that the people behind Facebook and Instagram not only designed their platforms to be wildly addictive but have kept them that way even amid mounting evidence that social media overuse has a horrible effect on people’s mental and physical well-being. (The same is true for Twitter, YouTube, TikTok, and most other social media.)One study that Kardaras cites found that university students who used social media for more than three hours each school day suffered from poor sleep and poor academic performance. They also had much higher rates of depression, substance abuse, stress, and suicide. Why? One likely culprit is too much false social comparison: In online posts, photos, and videos, the grass always seems greener elsewhere.“Imagine,” Kardaras writes, “someone recently divorced and alone staring at their Facebook news feed and seeing a never-ending stream of one happy family vacation photo after another from all their friends?…We can see how the effect can exacerbate the feelings of emptiness and despair—of my life is a failure.”And children and teenagers (like high-school-era Kelsey) are uniquely vulnerable to getting hooked and suffering the consequences. In Influenced, Brian Boxer Wachler, a doctor who somewhat ironically gained his fame on TikTok and other social media platforms, digs into this issue. In fact, he coined the term “dopamine behavior balance,” or “DBB,” to refer to the level of dopamine stimulation in those seeking out the activities that provide it.Boxer Wachler contends that young people have become accustomed to turning to social media to maintain their DBB—and it’s reflected in their brain activity. In a UCLA study, MRI scans measuring blood flow to the brains of teenagers responding to Instagram likes showed that their nucleus accumbens, or reward centers, lit up with activity. Another MRI study found that adolescents were more likely to give a thumbs-up to photos that already had many likes and that seeing such photos stimulated areas of the brain that were entirely different from the areas stimulated by less popular photos.Like Kardaras, Boxer Wachler asks readers to extrapolate: “Imagine what occurs when young people—whose brains are still developing—are exposed to positive and negative social media influences for hours on end while typically unsupervised,” he writes. He notes that research has also revealed that multitasking with devices while doing homework and studying leads to lower gray-matter density in the anterior cingulate cortex, supporting evidence that using social media does indeed change the brain.Boxer Wachler goes on to say that teenagers are more susceptible than adults are to the opinions of peers and influencers because their brains are still changing. They are more likely to feel “immediacy, connectedness, and intimacy” with the people they follow, including celebrities, and lack the critical thinking skills to recognize when they’re in an entirely one-sided relationship.I did eventually manage to break my addiction to Facebook. These days it’s the last place I want to spend my free time—not just because its business is based on hooking people but also because it allowed bots to sow disinformation that unfairly influenced a pivotal presidential election.At the same time, part of my day job is to oversee HBR’s presence on social media platforms. But our aim is to create safe communities for discourse and to share information that’s truly helpful to individuals and organizations. My hope is that others on these platforms—and the companies that created and maintain them—can work toward a future where they try to enrich rather than prey upon their users.', 'other people experience :', '1687192561.jpeg', 1, '2023-04-16 12:08:35', '2023-06-19 13:36:01', '0'),
(35, 'Some people use the term food addiction to talk about a compulsive or uncontrollable urge to eat food that does not relate to feelings of hunger. This behavior may occur in response to an emotion, such as stress, sadness, or anger.However, defining food addiction has been challenging. The Diagnostic and Statistical Manual of Mental Disorders, 5th Edition (DSM-5) does not include a standalone category for diagnosing food addiction.The human body needs food to provide energy and nutrition. However, people can feel addicted to food when they become dependent on certain types of foods. Any food can make a person feel addictive tendencies.In this article, we define food addiction and its characteristics, as well as giving tips on how to manage potential eating compulsions when they occur.What is a food addiction?A person with a food addiction may have an uncontrollable urge to eat food.According to 2019 researchTrusted Source, three positions summarize the current debate around food addiction:The addictive potential of certain foods, such as those with high levels of carbohydrates or fat, qualifies food addiction as a substance use disorder.Researchers have not identified a specific substance that triggers addiction, such as the nicotine in cigarettes, in potentially ‘addictive’ foods. This means that eating addiction is behavioral and not related to a substance.Neither of the above holds scientific weight, and even if they did, diagnosing compulsive eating as a food addiction would not be clinically helpful.Despite not having a formal diagnosis in DSM-5, some healthcare professionals still use the termTrusted Source ‘food addiction’.The study leader, Dr. Miele, argues that some people cite obesity prevention as justification for a food addiction diagnosis, and that many laws around restricting potentially ‘addictive’ foods take inspiration from similar laws around tobacco and alcohol, such as higher taxation.Around 35% of adults in the United States have obesity. However, people with obesity equate to only about one-third of those who compulsively eat, even though food addiction has some associations with weight gain.While food addiction may contribute to obesity for some people, it is also not the only factor. One earlier reviewTrusted Source found that up to 10% of people with a normal weight range or overweight had food addiction. However, there are few recent studies on its prevalence.Therefore, Dr. Miele maintains that treating compulsive eating might have indirect benefits for obesity prevention at a national level but that the success of these initiatives does not depend on people compulsively eating.Other researchers argue that there is not enough evidence to suggest that food has the same addictive qualities as alcohol or cigarettes. This research states that the term ‘food addiction’ is misleading, because it suggests that specific ingredients themselves are addictive.Those on the side of diagnosing food addiction suggest that consuming food triggers pleasurable chemicals in the brainTrusted Source, such as dopamine, that act as a reward. These chemicals can also act as a release from emotional distress.Read more on compulsive sexual behavior, another hotly debated addiction diagnosis.Trigger foodsSome foods with high sugar, fat, or starch content may have close associations with food addiction. These are known as hyperpalatable foods – while they are not inherently addictive, their flavour makes them easy to compulsively eat.However, any foods that a person finds comforting can lead to uncontrollable urges.The Yale Food Addiction Scale identified certain foods that appeared to have close links with food addiction. This is a questionnaire that helps doctors diagnose food addiction. Examples of possible trigger foods include:chipsfriescandychocolatecookieswhite breadpastaice creamHowever, it is worth noting that a person might develop a compulsion to eat any food that brings them comfort.Binge eating disorder includes periods of excessive overeating. SymptomsThe symptoms of food addiction can be physical, emotional, and social. These symptoms include:obsessive food cravingsa preoccupation with obtaining and consuming foodcontinued binge or compulsive eatingcontinued attempts to stop overeating, followed by relapsesa loss of control over the quantity, regularity, and location at which eating occursa negative impact on family life, social interaction, and financesthe need to eat food for emotional releaseeating alone to avoid attentioneating to the point of physical discomfort or painAfter compulsively consuming large quantities of food, a person may also experience negative feelings, such as:shameguiltdiscomfortreduced self-worthFood addiction can also trigger physical responses, including:intensive food restrictioncompulsive exerciseself-induced vomitingTreatmentTreatment for compulsive eating should address the emotional, physical, and psychological needs of the individual.Treatment will focus on breaking the destructive habit of chronic overeating. The goal is to replace dysfunctional eating habits with healthy ones and to address problems, such as depression or anxiety.Treatments that may be effective include:Cognitive behavioral therapy (CBT): This branch of psychotherapy aims to identify and change negative thought patterns, as well as creating new coping mechanisms for food addiction triggers. People can take a course of CBT either individually or in a group session.Medication: A person may take medications to relieve symptoms of depression or anxiety that may underly compulsive eating.Solution-focused therapy: A therapist can help an individual find solutions for specific issues, triggers, and stressors in a person’s life that lead to overeating.Trauma therapy: A psychotherapist helps a person come to terms with the trauma that may have links to trigger compulsive eating.Nutritional counseling and dietary planning: This can help a person develop a healthy approach to food choices and meal planning.', 'What is Food Addiction', '1687522753.jpg', 2, '2023-04-16 11:24:52', '2023-06-23 09:19:13', '0');
INSERT INTO `articles` (`id`, `content`, `desc`, `img`, `cate_id`, `created_at`, `updated_at`, `user_type`) VALUES
(36, 'AbstractWith the obesity epidemic being largely attributed to overeating, much research has been aimed at understanding the psychological causes of overeating and using this knowledge to develop targeted interventions. Here, we review this literature under a model of food addiction and present evidence according to the fifth edition of the Diagnostic and Statistical Manual (DSM-5) criteria for substance use disorders. We review several innovative treatments related to a food addiction model ranging from cognitive intervention tasks to neuromodulation techniques. We conclude that there is evidence to suggest that, for some individuals, food can induce addictive-type behaviours similar to those seen with other addictive substances. However, with several DSM-5 criteria having limited application to overeating, the term ‘food addiction’ is likely to apply only in a minority of cases. Nevertheless, research investigating the underlying psychological causes of overeating within the context of food addiction has led to some novel and potentially effective interventions. Understanding the similarities and differences between the addictive characteristics of food and illicit substances should prove fruitful in further developing these interventions.Keywords: food addiction, overeating, obesity, impulsivity, reward sensitivity, cognitive training, neuromodulationGo to:1. IntroductionIn 2003, obesity was declared a global epidemic by the World Health Organisation [1], and the prevalence of overweight and obesity in both developed and developing countries continues to increase [2,3]. In 2016, 39% of adults were estimated to be overweight and 13% to be obese [4]. Overweight and obesity present a substantial economic burden; in the UK, the total direct and indirect costs are expected to reach £37.2 billion by 2025 [5]. One of the common explanations for the increase in obesity over recent decades is the environment and, in particular, the availability of highly varied, palatable and fattening foods—which have been considered to be addictive [6,7,8,9]. While many individuals manage to resist these temptations and maintain a healthy weight, obese individuals have been shown to have a preference for such energy-dense foods compared to healthy-weight individuals [10,11,12]. The critical question is why some individuals are able to resist overeating while others cannot; what is the evidence for ‘food addiction’ and how can this be used to inform interventions for overeating.The concept of ‘food addiction’ has been evident in the media and general public for some time and is gaining increasing interest in the scientific literature [13]. There are now numerous reviews discussing the diagnostic, neurobiological and practical aspects of food addiction, with arguments both for and against its utility and validity [14,15,16,17,18,19,20]. This surge of interest comes with the perspective that addiction can be conceptualised as a loss of control over intake for a particular substance or behaviour without the need to focus purely on psychoactive substances [21,22]. The fifth edition of the Diagnostic and Statistical Manual [23] acknowledged this shift in perspective, with the addition of gambling disorder as the first behavioural addiction. Acceptance of this disorder was based on evidence that gambling can produce behavioural symptoms that parallel those of substance addiction and can activate the same neural reward circuits as drugs of abuse [24,25]. There is now a large body of research documenting similar observations for overeating and obesity. Moreover, treatments developed for addictive disorders have also shown some efficacy for the treatment of obesity and overeating. These findings highlight how a model of food addiction may help us to understand elements of overweight/obesity beyond a simple lack of willpower and can also be used to inform effective interventions and policy [26,27,28,29,30].Food addiction has not yet been recognised in the DSM; however, the similarities between some feeding and eating disorders and substance-use disorders (SUDs) have been acknowledged. These similarities include the experience of cravings, reduced control over intake, increased impulsivity and altered reward-sensitivity. Binge eating disorder (BED) and bulimia nervosa (BN) have been proposed as phenotypes that may reflect these similarities to the greatest extent [31,32,33,34]. Both BED and BN are characterised by recurrent episodes of binge eating in which large quantities of food are consumed in a short time accompanied by feelings of a lack of control, despite physical and emotional distress. Reports of food addiction have been shown to be particularly high amongst these individuals [32,35,36]. Food addiction has also been acknowledged with a standardised ‘diagnostic’ tool—the Yale Food Addiction Scale (YFAS) [37,38]. The YFAS is a questionnaire that parallels the diagnostic criteria for SUDs. The scale has so far been shown to exhibit good internal reliability as well as convergent, discriminant and incremental validity [37,38,39,40].In this review, we first discuss the DSM-5 diagnostic criteria for SUDs to summarise evidence for food addiction. These criteria are defined as ‘a cluster of cognitive, behavioural and physiological symptoms’ [23]. More specifically, the following categories are considered: impaired control, social impairment, repeated use despite negative consequences and physiological criteria. However, it should be noted that the physiological criteria of tolerance and withdrawal—for which there is less evidence in relation to food—are not necessary for a diagnosis of SUD. The DSM-5 also states that although changes in neural functioning are a key characteristic of SUDs, the diagnosis is based on a pathological pattern of behaviours. Hence, we discuss the diagnostic criteria initially, followed by a review of neurobiological evidence. We then explore the question of how this information can be, and has been, applied to interventions for overeating.1.1. Impaired ControlTaking larger amounts of the substance for longer periods than intended has been cited as one of the most commonly reported symptoms in overweight/obese and BED individuals [41,42]. Excessive and uncontrolled eating also forms the definition of binge eating in BED [23]. Although bingeing can be a planned behaviour, it has been shown that planned binges still result in a greater intake than initially intended [41]. Binge eating has also been documented in non-clinical samples [43,44]; however, in these individuals, occasions of impaired control are more likely to reflect unintentional snacking and excessive portion sizes [8,41,45].Unsuccessful efforts to restrict food intake are also well documented, with many dieters failing to maintain their diet or even gaining weight in the long term [46,47,48,49,50,51]. In their paper reviewing evidence for refined food addiction (i.e., processed foods with high levels of sugars or sweeteners, refined carbohydrates, fat, salt and caffeine), Ifland et al. [52] report that ‘Every refined food addict reports a series of attempts to cut back on eating. They have used a variety of techniques’ (pg. 521). Curtis and Davis [41] also report similar anecdotes in women with BED who describe avoiding certain trigger foods to control their binges.The third criterion of time spent obtaining, using and recovering from substance use also translates to BED and BN. These individuals may spend a lot of their time thinking about, engaging in and recovering from binge episodes. As mentioned earlier, bingeing is often a planned behaviour which may require a great deal of effort to purchase and store foods ready for a binge episode [41]. In addition, the criteria for BED emphasise the time spent bingeing, with the number of binge episodes per week determining the severity of the disorder [23]. Moreover, these individuals often experience physical and emotional distress following a binge eating episode. Recovery from food consumption has also been reported in self-identified food addicts with references to feeling sleepy or ‘hung-over’ [52,53].Although evidence for food addiction directly related to the DSM-5 diagnostic criteria for impaired control is largely anecdotal, there is a considerable amount of empirical evidence for an association between overeating/obesity and impaired control generally. Two aspects of self-regulatory failure that are particularly pertinent in the case of substance use and overeating are impulsivity and reward sensitivity [54,55,56].1.1.1. ImpulsivityAlthough impulsivity is a multi-faceted construct, it can be defined broadly as the tendency to think and act without sufficient forethought, which often results in behaviour that is discordant with one’s long-term goals. The role of impulsivity in SUDs is well documented [55,57,58,59,60]. Many studies have reported higher impulsivity levels with increasing substance use across a wide range of questionnaires and behavioural tasks, and for a variety of different substances [61,62,63,64,65,66]. For example, Noël et al. [67] performed a series of behavioural tasks assessing the ability to suppress irrelevant responses (response inhibition) and irrelevant information (proactive interference) in a group of detoxified alcohol-dependent individuals and matched healthy controls. They found a statistically significant group difference for all three tests assessing response inhibition but no differences for proactive interference.Impulsivity has also been implicated in overeating and obesity [54,68,69,70,71]. Overweight/obese individuals score higher on self-reported [72,73,74] and behavioural measures of impulsivity [75,76,77], whereas those high in self-control have been shown to be less likely to give in to temptation [78,79,80] and are more likely to maintain a healthy diet and engage in physical exercise [81,82,83] Impulsivity scores have also been shown to predict poor food choices [84] and correlate positively with food consumption [85,86,87]. For example, Guerrieri et al. [87] found that, in a sample of healthy-weight women, those with higher impulsivity scores ate more candy during a ‘bogus’ taste test than those with lower impulsivity scores. Churchill and Jessop [88] also showed a predictive relationship between impulsivity and snacking on high-fat foods over a two-week period. Scores on the YFAS have also been associated with various measures of impulsivity, such as motor and attentional impulsivity, mood-related impulsivity and delay discounting [89,90].1.1.2. Reward SensitivityA heightened general sensitivity to reward has also been linked to both substance use and overeating [69,77,91,92,93]. In the food literature, self-report measures of reward sensitivity have revealed associations with BMI, food craving and preferences for foods high in fat and sugar [93,94,95]. Using two behavioural tasks, Guerrieri et al. [69] measured reward sensitivity and response inhibition in children aged 8–10. They subsequently measured food intake in a bogus taste test when the foods were either varied or monotonous. Their results revealed that reward-sensitive children consumed significantly more calories than non-reward sensitive children only when the food was varied. There was no effect of response inhibition on food intake, nor any interaction with variety; however, unlike reward sensitivity, deficient response inhibition was associated with being overweight. The authors suggested that reward sensitivity may play a causal role in overeating, whereas deficient inhibitory control may be more of a maintaining factor. This fits well with findings from a study demonstrating a role of reward sensitivity in the early onset of heroin use and a role of impulsivity in escalating use [92,96].There is also evidence to suggest that reward sensitivity may decrease with more prolonged or established overeating, with studies showing anhedonia, or hypo-sensitivity to reward, in obese participants [97,98,99,100]. For example, Davis et al. [97] demonstrated that although overweight women were more sensitive to reward than healthy-weight women, those who were obese were significantly less reward sensitive than overweight women. Importantly, the earlier mentioned association between reward sensitivity and increased BMI was found in a sample of mainly healthy-weight women, with only 1% classified as obese [93]. Although there is a great deal of evidence to suggest that sensitivity to reward plays a role in substance abuse and overeating, the causal direction of this relationship remains unclear. On the one hand, increasing reward sensitivity may lead to overeating by increasing motivation towards pleasurable activities, such as consuming energy-dense foods that elicit dopamine and opioid activation. On the other hand, decreased reward sensitivity may cause individuals to seek out rewarding activities as a form of ‘self-medication’ in order to boost dopamine functioning (i.e., addictive behaviour is the result of a ‘reward deficiency syndrome’) [101,102]. These two arguments, and the relevant neuroimaging literature, are discussed further below (see the Neurobiological Similarities section below) and in more detail by Burger and Stice [103].Burger and Stice [103] offer several theories for how these two causal directions combine to explain obesity. They propose that high sensitivity to reward may initially cause individuals to over-consume palatable foods, but this sensitivity is then modified over time as the brain’s reward system adapts and shows divergent changes in food motivation (‘wanting’) versus hedonic pleasure (‘liking’). According to Robinson and Berridge’s [104,105,106] incentive-sensitisation theory, repeated intake results in an increased incentive value for these foods and their associated cues, which may be subjectively experienced as excessive wanting or craving. Moreover, this theory argues that with repeated presentations of palatable foods, the hedonic pleasure derived from consuming the food will decrease due to neural habituation, while the anticipation of reward increases. Hence, a vicious cycle emerges in which the individual will experience less pleasure from the food (‘liking’), but will simultaneously experience an increased desire (‘wanting’) for the food, driving further food seeking and consumption [107,108,109] (see Figure 1). The experience of intense cravings is the third criterion of impaired control and is another symptom of substance addiction that can be readily applied to overeating and obesity.2.2. Neurobiology of Inhibitory ControlDopamine receptor availability in obese individuals has also been shown to correlate positively with metabolism in prefrontal regions involved in inhibitory control (specifically the dorsolateral prefrontal cortex [DLPFC], medial orbitofrontal cortex [mOFC] and anterior cingulate gyrus, as well as the somatosensory cortices) [99]. Similar findings have been observed in healthy-weight participants, who demonstrated a positive correlation between dopamine receptor availability and inhibitory control performance on the stop-signal task [240]. Volkow et al. [99] hypothesised that altered dopamine functioning may play a role in overeating not only through altering the rewarding properties of food but also by reducing inhibitory control. A significant negative correlation between BMI and prefrontal activity has also been reported [75,241,242] along with reduced prefrontal activation following a meal in obese men and women [243,244,245]. Conversely, successful dieting has been positively associated with frontal activation [246,247,248,249].In a study of healthy women, Lawrence et al. [96] reported an association between food cue reactivity in the NAc and later snack consumption [117]. They also found that this reactivity was associated with increased BMI for individuals who reported low self-control. The authors proposed a ‘dual hit’ of increased reward motivation and poor self-control in predicting increased food intake [250]. Similarly, reductions in frontal grey matter volume have also been linked to increased BMI, poor food choices and related deficits in executive functioning [251,252,253,254,255,256,257,258]. These findings are reflective of a growing literature on the cognitive dysfunction associated with drug abuse and obesity, although research indicates that the causal relationship is bidirectional [76,259,260,261,262,263].Although it has been hypothesised that overeating is initially caused by a hyper-responsive reward circuitry and maintained by the subsequent degradation of this system [103], there is also evidence to suggest that some individuals may be genetically vulnerable to an impaired capacity for reward and inhibitory control. Genetics studies have revealed that both drug users and obese individuals have a significantly greater prevalence of the TaqI A1 allele polymorphism which can cause a 30%–40% reduction in striatal D2 receptors [213,264,265,266,267,268,269]. In addition, this polymorphism has been associated with behavioural measures of impulsivity and low reward sensitivity [270,271,272]. It has also been linked to low grey matter volume in the anterior cingulate cortex (ACC) [273], an area which is believed to be involved in executive control and reward expectancy [240,274,275], and has been shown to be active during resistance of cigarette craving [276]. Together these findings demonstrate that overeating and SUDs may share a common neurobiological mechanism involving altered dopamine functioning that subsequently disrupts mechanisms involved in reward sensitivity and inhibitory control.Our review, considering each of the DSM-5 criteria for SUDs in isolation, suggests that there is considerable evidence for food addiction. Whether an individual meets clinical diagnostic criteria under an SUD model, and the severity of the disorder, however, is dependent on an individual presenting a number of symptoms (mild: two to three symptoms; moderate: four to five symptoms; severe: six or more symptoms). Studies utilising the YFAS (which uses diagnostic criteria for SUDs) have certainly suggested that a substantial proportion of the general population meet the diagnostic cut-off for food addiction (15%–20%), with approximately 11% of the population being classified as ‘severe’ [38,276]. The prevalence of food addiction in those with BED and BN has been reported as much higher, with estimates of 92% for BED and 96%–100% for BN [32,277,278]. Acknowledging the potential prevalence of food addiction, we next discuss a range of treatments for overeating that have been informed by the similarities between SUDs and overeating.Go to:3. Treatment ImplicationsOne of the greatest potential advantages of identifying the similarities between substance addictions and overeating is the development of effective interventions. The standard approach to weight loss, involving maintaining a healthy diet and physical exercise, is often associated with poor adherence rates and overall weight gain [46,47,48,49,50,51,279]. One possible reason for the ineffectiveness of dieting is that it is treating the outcome of overeating and not the underlying cause. Approaches that target increased impulsivity and reduced self-control may have more success. For example, Hall, Fong, Epp and Elias [280] showed that executive function on the go/no-go task (a measure of response inhibition) predicted unique variance for dietary behaviour and physical exercise, and also moderated the association between intentions and behaviour [117,281]. This suggests that individuals who are more capable of controlling their impulsive actions are more likely to successfully meet their goals. This also implies that techniques to improve such abilities may prove to be effective tools for aiding weight loss.', 'Food Addiction', '1687522786.jpg', 2, '2023-04-16 11:26:12', '2023-06-23 09:19:46', '0'),
(37, 'I was in high school when Facebook took off. This was in the mid-2000s, when the platform had a “wall” for public conversations, and you’d often post an uncurated album of 75 photos from a day out with your friends.  As an introverted, socially awkward teenager whose in-person interactions never seemed to go right, I liked the way Facebook allowed me to portray myself as I wanted. I created a profile that showcased my favorite quotes from classic movies and the music I had on repeat. In the digital world, I was more open and candid. I got to know people that I wouldn’t talk to face-to-face—and I often used the platform to vent about my classes.  My social media use seemed harmless. But I soon noticed that my attention span and mental capacity were suffering. When trying to finish school assignments, I’d check Facebook repeatedly. Each day I spent hours scrolling through its pages. It got so bad that I had to temporarily deactivate my profile ahead of my final exams to eliminate temptation.  But after they ended I was back at it. I remember how, during a weeklong trip I took with my family that summer, we had no computer access (this was before smartphones), and I kept thinking, I can’t wait to get home to check Facebook. I’ll have more notifications since I’ve been away. Most notifications I got were surface-level comments or passive “likes” that didn’t really mean anything, yet it was so hard to stop checking them.  I knew that I should have been reading a book—or pursuing some enriching hobby—instead. I blamed myself, thinking, This is how I’ve chosen to spend my time. But I later learned that social media platforms are addictive by design: The notifications they’re built around trigger a dopamine release in our brains, just as recreational drugs and gambling do. My Facebook addiction wasn’t my fault.  As the New York Times reporter Max Fisher explains in his new book, The Chaos Machine, “Dopamine creates a positive association with whatever behaviors prompted its release, training you to repeat them….When that dopamine reward system gets hijacked, it can compel you to repeat self-destructive behaviors. To place one more bet, binge on alcohol—or spend hours on apps even when they make you unhappy.”  Fisher says that the notifications themselves aren’t the problem. But they become one when social media platforms pair them with positive affirmation—those likes, follows, updates from friends, and photographs of family, pets, food, and beautiful scenery.  In another new book, Digital Madness, the psychologist Nicholas Kardaras explains that the people behind Facebook and Instagram not only designed their platforms to be wildly addictive but have kept them that way even amid mounting evidence that social media overuse has a horrible effect on people’s mental and physical well-being. (The same is true for Twitter, YouTube, TikTok, and most other social media.)  One study that Kardaras cites found that university students who used social media for more than three hours each school day suffered from poor sleep and poor academic performance. They also had much higher rates of depression, substance abuse, stress, and suicide. Why? One likely culprit is too much false social comparison: In online posts, photos, and videos, the grass always seems greener elsewhere.  “Imagine,” Kardaras writes, “someone recently divorced and alone staring at their Facebook news feed and seeing a never-ending stream of one happy family vacation photo after another from all their friends?…We can see how the effect can exacerbate the feelings of emptiness and despair—of my life is a failure.”  And children and teenagers (like high-school-era Kelsey) are uniquely vulnerable to getting hooked and suffering the consequences. In Influenced, Brian Boxer Wachler, a doctor who somewhat ironically gained his fame on TikTok and other social media platforms, digs into this issue. In fact, he coined the term “dopamine behavior balance,” or “DBB,” to refer to the level of dopamine stimulation in those seeking out the activities that provide it.  Boxer Wachler contends that young people have become accustomed to turning to social media to maintain their DBB—and it’s reflected in their brain activity. In a UCLA study, MRI scans measuring blood flow to the brains of teenagers responding to Instagram likes showed that their nucleus accumbens, or reward centers, lit up with activity. Another MRI study found that adolescents were more likely to give a thumbs-up to photos that already had many likes and that seeing such photos stimulated areas of the brain that were entirely different from the areas stimulated by less popular photos.  Like Kardaras, Boxer Wachler asks readers to extrapolate: “Imagine what occurs when young people—whose brains are still developing—are exposed to positive and negative social media influences for hours on end while typically unsupervised,” he writes. He notes that research has also revealed that multitasking with devices while doing homework and studying leads to lower gray-matter density in the anterior cingulate cortex, supporting evidence that using social media does indeed change the brain.  Boxer Wachler goes on to say that teenagers are more susceptible than adults are to the opinions of peers and influencers because their brains are still changing. They are more likely to feel “immediacy, connectedness, and intimacy” with the people they follow, including celebrities, and lack the critical thinking skills to recognize when they’re in an entirely one-sided relationship.  I did eventually manage to break my addiction to Facebook. These days it’s the last place I want to spend my free time—not just because its business is based on hooking people but also because it allowed bots to sow disinformation that unfairly influenced a pivotal presidential election.  At the same time, part of my day job is to oversee HBR’s presence on social media platforms. But our aim is to create safe communities for discourse and to share information that’s truly helpful to individuals and organizations. My hope is that others on these platforms—and the companies that created and maintain them—can work toward a future where they try to enrich rather than prey upon their users.', 'what is social media', '1687520382.jpg', 7, '2023-06-22 22:21:19', '2023-06-23 08:39:42', '1'),
(38, 'Social media use has grown exponentially. For example, Facebook and YouTube attract 68% and 73% of the adult population in the U.S. respectively (Smith & Anderson, 2018). Overuse of social media is associated with low work performance (Kuss et al., 2014, Xanidis and Brignell, 2016), less healthy social relationships (Fox and Moreland, 2015, Müller et al., 2016), sleep problems (Koc and Gulyagci, 2013, Wolniczak et al., 2013), low life satisfaction (Blachnio et al., 2016, Hawi and Samaha, 2016), and feelings of jealousy, anxiety, and depression (Elphinston and Noller, 2011, Pantic, 2014).  Terms, such as social media addiction, problematic social media use, and compulsive social media use, are used interchangeably to refer to the phenomenon of maladaptive social media use characterized by either addiction-like symptoms and/or reduced self-regulation (Bányai et al., 2017, Casale et al., 2018, Klobas et al., 2018, Marino et al., 2018, Tarafdar et al., 2020). Among these terms, social media addiction (including its variations, such as, Facebook addiction, SNSs addiction, and addictive SNSs use) is most commonly used and is defined as a maladaptive psychological dependency on SNS to the extent that behavioral addiction symptoms occur (Cao et al., 2020, Chen, 2019, Turel and Serenko, 2012). However, due to the historical connection between the term “addiction” and substance use disorders, some researchers worry that the term “social media addiction” may undermine the severity of traditional psychiatric disorders and that it is premature in pathologizing this issue (Carbonell & Panova, 2017). Some scholars, therefore, advocate for the term “problematic use” to distinguish such maladaptive Internet uses from formal clinical conditions (Caplan, 2010, Lee et al., 2017). However, defining and measuring problematic social media use is by no means consistent in the literature. Some researchers measured problematic use according to the purpose of use (e.g., social comparison and impression management) or the context (e.g., during driving and attending classes; Flynn et al., 2018, Turel and Qahri-Saremi, 2016); some adopted the definition and measurement from Caplan’s generalized problematic Internet use (GPIU) model (Assuncao et al., 2017, Caplan, 2010, Casale and Fioravanti, 2017, Marino et al., 2016); and others adopted measurements based on the paradigm and symptoms of behavioral addictions (Chen and Kim, 2013, Huang et al., 2014, Lee-Won et al., 2015, Mérelle et al., 2017). Moreover, “problematic social media use” is such a broad term that it can refer to using social media for illegal, unethical, or socially unacceptable activities (e.g., online stalking, cyberbullying, and spreading scams and false information).  To align with the majority of the literature, we used social media addiction (SMA) or addictive social media use (in a non-clinical sense) in the remainder of this review, with a recognition of the controversies associated with the term. Exceptions were made when it is more precise to use the other terms (e.g., when referring to prior literature). For the purpose of the current review, we define addictive social media use as being overly concerned about social media, strongly motivated and having been devoting a great amount of time and energy to use social media, to the degree that an individual’s social activities, interpersonal relationships, studies/jobs, and/or health and well-being are impaired (Andreassen & Pallesen, 2014).  Currently, there is an inconsistency in theorizing SMA, especially how it develops. Several reviews on theoretical frameworks to explain SMA existed, but none examined the theoretical frameworks applied in the empirical studies of SMA. Specifically, one review briefly mentioned three highly-cited Internet addiction models (Griffiths, Kuss, & Demetrovics, 2014). One surveyed several general theoretical perspectives (e.g., neurobiological perspectives and cognitive perspective) without mentioning specific theories or models (Andreassen & Pallesen, 2014). The other review summarized several existing theoretical frameworks, discussed their limitations, and laid out opportunities for theoretical improvements (Lee et al., 2017); however, it seldomly mentioned how empirical studies of SMA apply these theoretical frameworks and the specific constructs in these frameworks. Moreover, new studies on SMA are emerging at an impressively fast pace; there is a lack of updated review of relevant theoretical frameworks.  To fill these gaps, we reviewed theories and models adopted in the existing empirical studies of SMA. We intended to answer two research questions: What are the theories and models used in the existing empirical studies to explain the development of SMA? What factors inferred by these theories and models are identified to be significantly associated with SMA? Answers to these questions can help us build a clearer understanding of how SMA was explained, identify theoretical gaps, and explore opportunities for future investigations.', 'Social media effect side', '1687520407.jpg', 7, '2023-06-22 22:22:25', '2023-06-23 08:40:07', '1'),
(39, 'Excessive use of social media sites - also known as social media addiction -  It is a type of psychological and behavioral dependence on social media platforms and  is also known as online addiction disorder and other forms of digital media overuse and generally defined  as compulsory use of social media platforms that results in serious harm to individuals\'  performance in various spheres of life for a long time, In addition, experts from many areas have  found and discussed relationships between the use of digital media and mental health and raised controversy in medical,  practical and technical communities, and the research indicated that it affects women more than men and  explained that it affects individuals according to the social media platform used and  individuals can be diagnosed with such a disorder if they participate in websites as a day-to-day responsibility  that needs to be implemented or for other purposes without giving negative consequences any consideration.  Excessive use of social media platforms not classified by the World Health Organization or the Diagnostic and  Statistical Manual for Mental Disorders (DSM-5) as a disorder. Disputes over excessive use of social media platforms  include whether it is a pathological condition separate from other disorders or a condition resulting from underlying  psychiatric disorders. The researchers discussed this question from many perspectives and did not agree on a single  universally adopted definition and this caused difficulties in making evidence-based recommendations.    العلامات والأعراض  Signs and symptoms:: Excessive use of social media sites is associated with mental health symptoms such as anxiety and  depression in children and young people In 2019,  a comprehensive analysis was conducted to study the use of the Facebook  platform and found that between them and the symptoms of depression were associated with the size  of a small effect, But social media sites can in some cases be used to improve mood A study conducted at  Michigan State University from 2015 and 2016 showed that users of social media platforms are 63% less likely to  have severe psychiatric disorders such as depression and anxiety from the first year to the next; Users who  communicate with extended family members have fewer psychological disorders as long as they are healthy.  In contrast, a systematic study and a comprehensive analysis in 2018 showed that excessive use of Facebook  results in adverse effects on wellness (Well-being) in adolescents and young adults showed that psychiatric  disorders were associated with excessive use. A group study of individuals aged 15 and 16 showed that continuous  use of social media platforms was associated with laboratory or clinical symptoms of ADHD and followed them for  two years. A technical report by Chasiakos, Redesky and Christakis identified benefits and concerns for adolescents\' mental health and their association with social media and the report showed that the amount of time people spend using social media sites is not the important factor but how they spend that time most importantly, Older adolescents who use social media unconsciously are found to have low level of wellness and life satisfaction, and unlike those who participate in social media effectively. and the report also explained that there is a curved U-shaped relationship between the time spent using digital media and the risk of depression at both high and low ends of Internet use,  A person can notice how much time he or she spends using social media sites to see if he or she has an addiction. And addictions are emotion control disorder, which can lead a person to lose time while using social media sites. For example, a person\'s psychological clock can pass slower than usual and lose their self-awareness, People can therefore use social media platforms unconsciously and for long periods of time and it is also common for adolescents in the digital age to use their smartphones for recreational purposes,  It is educational, news and day-to-day life management, so adolescents are more likely to do addictive behaviour and habits.     ------------------------------------------------------------             introdication::::(https://en.wikipedia.org/wiki/Problematic_social_media_use#Symptoms) Experts from many different fields have done a lot of research, debated, and talked about the links between using digital  media and mental health. Research suggests that mental health issues arising from social media use affect women more than  men and vary according to the particular social media platform used. Psychological or behavioral dependence on social media  platforms can result in significant negative functions in individuals\' daily lives. Studies show there are several  negative effects that social media can have on individuals\' mental health and overall well-being.[11][12][13] While  researchers have attempted to examine why and how social media is problematic, they still struggle to develop  evidence-based recommendations on how they would go about offering potential solutions to this issue. Because social  media is constantly evolving, researchers also struggle with whether the disorder of problematic social media use would  be considered a separate clinical entity or a manifestation of underlying psychiatric disorders. These disorders can be  diagnosed when an individual engages in online content/conversations rather than pursuing other interests that occur in  real life.', 'Excessive use of social media sites', '1687520441.jpg', 7, '2023-06-22 22:23:49', '2023-06-23 08:40:41', '1'),
(40, '1. Look for better alternatives The expert says, “Be mindful of the time you spend on social media. Recognise the purpose it serves for you, it might serve as a good source of distraction, a filler, or even a source of information.” Once you are aware of the input it is giving to you, you can go ahead to determine if other mechanisms can be brought into place that could help fulfil the objectives that social media is helping with.2. Cultivate more fruitful interests and hobbies Even if social media is helping you in good ways, spending unlimited time can do more harm than good. “If you wish to let go of this bad habit, work actively to develop areas of interest and hobbies that might help. Look to incorporate activities that aid in providing purpose and meaning to your routines and day”, suggests the expert.3. Try to harbour real interactions You might have found your safe space in interacting online, the truth is that nothing can parallel real interactions. The expert reckons to engage more actively with people around you, and never allow yourself to substitute real interactions with virtual ones.4. Set time limit Getting completely off social media might be the worst piece of advice for someone who’s already battling addiction. Instead, you can take things slow. Set time limits for hourly usage of social media, and use the support of others, if needed, to be able to implement the same.5. Don’t compare yourself to others What works for someone else might not work for you when it comes to looking for ways to beat social media addiction. But don’t let that demotivate you. Work out what works best for you, and execute the same without comparing your growth with others.  In case you or someone you love is addicted to social media, make sure you are being safe and talk to someone who can help you.', '5 Tips for Overcoming from Social Media Addiction', '1687520915.jpg', 7, '2023-06-23 08:46:34', '2023-06-23 08:48:35', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Gaming', '1681842338.jpeg', '2023-04-16 12:22:48', '2023-04-18 16:25:38'),
(2, 'food', '1681842351.jpg', '2023-04-16 12:23:02', '2023-04-18 16:25:51'),
(3, 'Plastic Surgery', '1681842361.jpg', '2023-04-16 12:23:14', '2023-04-18 16:26:01'),
(4, 'Shopping', '1685767401.jpg', '2023-04-16 12:23:24', '2023-06-03 02:43:21'),
(5, 'Sport', '1685767449.png', '2023-04-18 12:23:35', '2023-06-03 02:44:09'),
(6, 'Work', '1681842394.jpg', '2023-04-11 12:23:45', '2023-04-18 16:26:34'),
(7, 'social media', '1681842382.jpeg', '2023-04-11 14:03:56', '2023-04-18 16:26:22'),
(8, 'Gambling', '1681842463.jpg', '2023-04-18 16:27:43', '2023-04-18 16:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `group_chat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `created_at`, `updated_at`, `name`, `group_chat`) VALUES
(1, NULL, NULL, 'food therapy', 1),
(2, NULL, NULL, 'food addiction treatment group', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `created_at`, `updated_at`, `chat_id`, `user_id`, `message`) VALUES
(5, '2023-06-21 09:41:23', '2023-06-21 09:41:23', 2, 25, 'hi there....'),
(6, '2023-06-21 09:47:54', '2023-06-21 09:47:54', 2, 27, 'hello my friend..:)'),
(20, '2023-06-23 21:01:21', '2023-06-23 21:01:21', 2, 25, 'hi everyone\n'),
(21, '2023-06-23 21:01:37', '2023-06-23 21:01:37', 2, 27, 'hi doctor\n');

-- --------------------------------------------------------

--
-- Table structure for table `chat_user`
--

CREATE TABLE `chat_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_user`
--

INSERT INTO `chat_user` (`id`, `user_id`, `chat_id`, `created_at`, `updated_at`) VALUES
(1, 28, 1, '2023-06-20 19:44:14', NULL),
(2, 24, 1, NULL, NULL),
(4, 22, 1, NULL, NULL),
(6, 25, 2, NULL, NULL),
(7, 27, 2, NULL, NULL),
(8, 24, 2, NULL, NULL),
(9, 28, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('198713b0-4640-4453-850f-5576b0c0048d', 22, 25, 'dddoll', NULL, 1, '2023-06-23 20:37:31', '2023-06-23 20:37:32'),
('26a4213e-01d7-4500-8522-f4a02fcfffe0', 25, 22, 'nnnnn', NULL, 1, '2023-06-23 18:29:00', '2023-06-23 18:34:27'),
('2dc55d7e-864f-41e8-a67e-e31b92ced5f2', 27, 22, 'jjjj', NULL, 0, '2023-06-23 18:27:59', '2023-06-23 18:27:59'),
('355ac43c-fb4e-49fc-b28c-29bd82833f38', 25, 22, 'hi doctor', NULL, 1, '2023-06-23 20:37:16', '2023-06-23 20:37:17'),
('3a667a36-77e7-4f24-95f5-bac50848255b', 22, 22, 'gggggggggg', NULL, 1, '2023-06-23 18:11:19', '2023-06-23 18:12:13'),
('520c65e1-d0f2-476e-950d-e2bfc47aadc6', 22, 27, 'ssssss', NULL, 1, '2023-06-23 18:17:18', '2023-06-23 18:17:19'),
('5b5ec0af-8402-4636-9a5a-3299b3350fcf', 22, 27, 'kkkkkkkkk', NULL, 1, '2023-06-23 18:17:33', '2023-06-23 18:17:33'),
('6bab1ab2-0daf-4ece-89f6-7610d6aaa228', 25, 22, 'mmmmmmmmm', NULL, 1, '2023-06-23 18:28:43', '2023-06-23 18:34:27'),
('76c1fc4a-cc84-4a48-a337-03f784cd9965', 25, 22, 'kkkkkkkk', NULL, 1, '2023-06-23 18:27:34', '2023-06-23 18:34:27'),
('7736ae49-60f1-4eba-9b30-c6159b93ada4', 27, 22, 'nnnnnnnnn', NULL, 1, '2023-06-23 18:17:27', '2023-06-23 18:17:28'),
('7d34cb15-fdd1-44b3-875b-735b40fd1f5b', 22, 25, 'hi', NULL, 1, '2023-06-23 20:37:21', '2023-06-23 20:37:22'),
('87a3f8a8-180c-4ebf-a247-1d87adee7eef', 25, 22, 'ddd', NULL, 1, '2023-06-23 20:37:27', '2023-06-23 20:37:27'),
('95312dad-4f5f-45fc-bb98-239f7a5ea68c', 22, 25, 'xxxx', NULL, 1, '2023-06-23 18:34:31', '2023-06-23 18:34:40'),
('a2a870bb-3d63-4445-b03c-3526ab1ac336', 25, 22, 'ffffff', NULL, 1, '2023-06-23 18:26:10', '2023-06-23 18:34:27'),
('a6ff85f0-e6c0-4823-9fc9-817717ef9115', 27, 22, 'hhhh', NULL, 1, '2023-06-23 18:14:16', '2023-06-23 18:17:00'),
('a9ab9ea9-20b0-4753-8749-6e9d466afac6', 25, 22, 'xxxx', NULL, 1, '2023-06-23 18:34:45', '2023-06-23 18:34:46'),
('a9ad1760-5eb7-4ee8-88b2-0acfd1b22868', 27, 25, 'kkkkkkkkk', NULL, 0, '2023-06-23 18:25:58', '2023-06-23 18:25:58'),
('b38550e5-fa42-44b0-befc-d47cf9ec00b9', 25, 22, 'ff', NULL, 1, '2023-06-23 20:36:57', '2023-06-23 20:36:58'),
('b8868238-f1ac-4626-9ed9-b87ca1194371', 25, 22, 'hhhh', NULL, 1, '2023-06-23 20:36:48', '2023-06-23 20:36:50'),
('f3b7f3cd-9e41-455f-8b19-043cb96d1e18', 22, 25, 'hi', NULL, 0, '2023-06-24 21:22:07', '2023-06-24 21:22:07'),
('f72e3f07-a96d-440d-8ac8-d8262ec2544d', 22, 26, 'jjjjjj', NULL, 0, '2023-06-23 18:14:39', '2023-06-23 18:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `last_time_message` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `last_time_message`, `created_at`, `updated_at`) VALUES
(1, 2, 75, '2023-06-03 11:52:12', '2023-06-20 08:33:32', '2023-06-03 11:52:12'),
(2, 2, 75, '2023-06-16 15:42:43', '2023-06-07 08:33:41', '2023-06-16 15:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `email_verified_at`, `password`, `img`, `degree`, `experience`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(70, 'Dr. Maria Younis', 'maria@gmail.com', NULL, '$2y$10$Nk/zQripJLmEx60ZsjmsguVhE4/ndCldcSAfT4TMAJQcBLiDZLbSe', '1687107307.jpg', 'PHD,Behavioral Phychology', 'five years', 'I love my work and i do my best effort to do you life is better', NULL, '2023-06-01 20:03:20', '2023-06-18 13:55:07'),
(72, 'Dr. Peter Smith', 'peter@gmail.com', NULL, '$2y$10$xHNlUTmd.bNms7DpdQ7IbOa4T3SOpdwUE.xhnI98Sryn32scThbye', '1687092749.jpg', 'PHD,Behavioral Phychology', 'seven years', 'Wherever the art of Medicine is loved, there is also a love of Humanity.', NULL, '2023-06-03 02:47:26', '2023-06-18 09:52:29'),
(74, 'Dr. Badr Ziad', 'badr@gmail.com', NULL, '$2y$10$xMGjTIbscpxG3jU102ZkoOrM0C/2lait8Kz3qvkQrXLHM1rdx.kCa', '1687092913.jpg', 'PHD,Behavioral Phychology', 'ten years', 'I live in Cairo', NULL, '2023-06-03 02:51:06', '2023-06-18 09:55:13'),
(75, 'Dr. Tia Aly', 'tia225@gmail.com', NULL, '$2y$10$rP.1WQFG0i8LaNqHaTy9COyPzRJyhxgxPiTxArbzi8mcO87uZv4Yq', '1687107360.jpg', 'PHD,Behavioral Phychology', 'two years', 'my work is very importent for me', NULL, '2023-06-03 02:53:24', '2023-06-18 13:56:00'),
(76, 'Dr. Omar Assad', 'omar@gmail.com', NULL, '$2y$10$EB64B7jVYFVxiKk5/0nVU.3aLtD1pct545MA5OzLxtRJErimw8DIG', '1687107262.jpg', 'DHD,Behavioral Phychology', 'two years', 'Wherever the art of Medicine is loved, there is also a love of Humanity.', NULL, '2023-06-03 02:58:13', '2023-06-18 13:54:22'),
(77, 'Dr. Yahia Ahmed', 'yahia@gmail.com', NULL, '$2y$10$lj4/bUo0Pcqj2BMtNyGhAukkLTvqowHQpEFHLgpuXLYD/lI43CwBG', '1687110519.jpg', 'DHD,Behavioral Phychology', 'eight years', 'Wherever the art of Medicine is loved, there is also a love of Humanity.', NULL, '2023-06-18 14:48:39', '2023-06-18 14:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `emotions`
--

CREATE TABLE `emotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `emotion_img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emotions`
--

INSERT INTO `emotions` (`id`, `name`, `emotion_img`, `created_at`, `updated_at`) VALUES
(1, 'Happy', '1681843705.jpeg', '2023-04-18 16:48:25', '2023-04-18 16:48:25'),
(2, 'Fine', '1681843718.jpeg', '2023-04-18 16:48:38', '2023-04-18 16:48:38'),
(3, 'Stressed', '1681843737.jpeg', '2023-04-18 16:48:57', '2023-04-18 16:48:57'),
(4, 'Angry', '1681843754.jpeg', '2023-04-18 16:49:14', '2023-04-18 16:49:14'),
(5, 'Sad', '1681843772.jpeg', '2023-04-18 16:49:32', '2023-04-18 16:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `read` tinyint(1) DEFAULT 0,
  `body` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `receiver_id`, `read`, `body`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 75, 0, 'gggggggggggggg', NULL, '2023-06-03 11:52:12', '2023-06-03 11:52:12'),
(2, 2, 2, 75, 0, 'hhhhhhhhhhh', NULL, '2023-06-16 15:42:43', '2023-06-16 15:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_19_124214_create_prescriptions_table', 1),
(6, '2023_02_19_125234_create_doctors_table', 1),
(7, '2023_02_19_175137_create_posts_table', 1),
(8, '2023_02_19_180256_create_appointments_table', 1),
(9, '2023_02_20_123437_create_videos_table', 1),
(10, '2023_02_20_125134_create_categories_table', 1),
(11, '2023_02_20_125305_create_articles_table', 1),
(12, '2023_02_20_125825_create_podcasts_table', 1),
(13, '2023_02_20_130703_create_emotions_table', 1),
(14, '2023_02_20_130805_create_quotes_table', 1),
(15, '2023_02_20_131006_create_messages_table', 1),
(16, '2023_02_20_135121_create_post_likes_table', 1),
(18, '2023_02_20_140441_create_reviews_table', 1),
(19, '2023_02_20_141003_create_notifications_table', 1),
(22, '2023_03_11_093231_create_safespaces_table', 1),
(23, '2023_03_23_130421_create_doctors_table', 2),
(29, '2023_02_20_140041_create_rates_table', 3),
(31, '2023_03_11_091140_create_user_favoirate_podcasts_table', 3),
(32, '2023_03_23_201824_create_users_categories_table', 3),
(34, '2023_04_12_121454_add_role_as_to_users_table', 4),
(35, '2023_05_02_222519_add_google_id_to_users_table', 4),
(36, '2023_05_03_084557_add_facebook_id_to_users_table', 4),
(37, '2023_05_12_093104_add_img_to_podcasts_table', 5),
(39, '2023_05_18_195326_add_user_type_to_articles_table', 6),
(40, '2023_05_18_200133_add_user_type_to_podcasts_table', 7),
(41, '2023_05_20_184626_create_yoga_child_table', 8),
(42, '2023_05_21_170652_create_yoga_child_table', 9),
(43, '2023_05_21_172410_create_yoga_table', 10),
(44, '2023_05_21_173225_create_yogas_table', 11),
(45, '2023_05_28_013518_add_planoftreatment_to_prescriptions_table', 12),
(46, '2023_05_28_013957_add_planoftreatment_to_prescriptions_table', 13),
(47, '2023_05_31_145953_create_conversations_table', 14),
(50, '2023_05_31_145922_create_messages_table', 15),
(51, '2023_03_11_002212_create_user_favoirate_therapists_table', 16),
(54, '2023_06_20_194925_create_rate_articles_table', 17),
(55, '2023_06_21_999999_add_active_status_to_users', 18),
(56, '2023_06_21_999999_create_chatify_favorites_table', 18),
(57, '2023_06_21_999999_create_chatify_messages_table', 18),
(58, '2023_06_23_999999_add_avatar_to_users', 18),
(59, '2023_06_23_999999_add_dark_mode_to_users', 18),
(60, '2023_06_23_999999_add_messenger_color_to_users', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `sendTimestamp` time NOT NULL,
  `receiveTimestamp` time NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'samsung', 'dcb6334927b72e8d41a3510db90e762d1cd800fc307455cbadbbdd055494d51a', '[\"*\"]', '2023-03-12 15:45:30', '2023-03-12 15:13:59', '2023-03-12 15:45:30'),
(2, 'App\\Models\\User', 2, 'samsung', 'eb101cd83c98914797c77153bdb6877ed3a277f420497e0fd7673b9b06ab98dc', '[\"*\"]', '2023-03-15 10:50:30', '2023-03-12 15:50:27', '2023-03-15 10:50:30'),
(3, 'App\\Models\\User', 1, 'samsung', 'e300f4cbcbf2dd6970b01d5c3cd7db315cec42b762e4059baaff8e4001fb071d', '[\"*\"]', '2023-03-21 17:14:56', '2023-03-15 12:29:17', '2023-03-21 17:14:56'),
(4, 'App\\Models\\User', 1, 'samsung', '66edc85c15e56a60529a125afaf08453acd7d5282dbd55cb085f9fb74db5c1cf', '[\"*\"]', NULL, '2023-03-15 12:29:29', '2023-03-15 12:29:29'),
(5, 'App\\Models\\User', 21, 'samsung', 'e686b29a590f547923c98c0b24bbe60eb9dbc8029a83ae753961ebb19d8121e8', '[\"*\"]', '2023-03-21 17:14:32', '2023-03-21 17:11:58', '2023-03-21 17:14:32'),
(6, 'App\\Models\\User', 22, 'samsung', '893d0fdbc03a9dabc1a36ae59ac79dd200587fbfe145711a45d7015ce0764900', '[\"*\"]', '2023-03-21 17:50:32', '2023-03-21 17:31:15', '2023-03-21 17:50:32'),
(7, 'App\\Models\\User', 23, 'samsung', 'eb1279278df8604cee1c988024f56a26516eabdf3ccd0aa36f62f65e74e47b8d', '[\"*\"]', '2023-03-21 18:01:59', '2023-03-21 17:53:51', '2023-03-21 18:01:59'),
(8, 'App\\Models\\User', 24, 'samsung', 'c067967013247345698be871ea2f6ed430db36ee6243113b65d3cd50b5be31dc', '[\"*\"]', '2023-03-26 09:16:32', '2023-03-21 18:15:24', '2023-03-26 09:16:32'),
(9, 'App\\Models\\User', 25, 'samsung', '6b42ab5f6bd51cab23a510e0a0515419f4cd4978c3284652bd684ba9caa39c90', '[\"*\"]', NULL, '2023-03-22 17:01:27', '2023-03-22 17:01:27'),
(10, 'App\\Models\\User', 26, 'samsung', '1324a2a619e1cca5dc44fb8d3de83cc70a4f82e7914c3fa731a1bcacff494257', '[\"*\"]', NULL, '2023-03-22 17:03:12', '2023-03-22 17:03:12'),
(11, 'App\\Models\\User', 27, 'samsung', '4496f35e04f48578911faa3a66c52e5249ee1044e6add9aed1e5fab258cd0f55', '[\"*\"]', NULL, '2023-03-22 17:21:09', '2023-03-22 17:21:09'),
(12, 'App\\Models\\User', 36, 'samsung', '0fcac0f737ac6208566ad3935f1c531a1983046e094cb5a829463387f0ee37b5', '[\"*\"]', '2023-03-24 16:49:27', '2023-03-23 19:03:37', '2023-03-24 16:49:27'),
(13, 'App\\Models\\User', 47, 'samsung', '56e8325a594cea8c73458e910e1c00c04270f984ca3768b5af6b2c55e7bf060b', '[\"*\"]', NULL, '2023-03-24 17:17:11', '2023-03-24 17:17:11'),
(14, 'App\\Models\\User', 14, 'samsung', '2f0c05a26cf748090dac67b02e9c31e3db9801ab7196b1c0f47e09e29ab9f0a5', '[\"*\"]', '2023-03-25 12:17:01', '2023-03-25 11:29:36', '2023-03-25 12:17:01'),
(15, 'App\\Models\\User', 47, 'samsung', '9d11c04bba8e227c55988e31764a97dbaa898315518c64c038d7ff02331a083d', '[\"*\"]', '2023-03-25 12:21:38', '2023-03-25 12:20:03', '2023-03-25 12:21:38'),
(16, 'App\\Models\\User', 28, 'samsung', '3ad8e9d91438bcdac34ed1da0e887761f18f793a6f9279935b96f47182c4138e', '[\"*\"]', '2023-03-25 12:36:31', '2023-03-25 12:24:05', '2023-03-25 12:36:31'),
(17, 'App\\Models\\User', 73, 'samsung', '32facdbd231f4fa428186fec1445c5dc2c05c0d7f11bef3cad968ccc031343af', '[\"*\"]', '2023-03-25 15:02:55', '2023-03-25 12:38:38', '2023-03-25 15:02:55'),
(18, 'App\\Models\\User', 73, 'samsung', 'a99ffa2b80f854385c3d72511c7997dca54a0d5b4b753765b8fe5dfcccd2b412', '[\"*\"]', NULL, '2023-03-25 13:03:10', '2023-03-25 13:03:10'),
(19, 'App\\Models\\User', 27, 'samsung', '31012e04d2c9aaa7baf84c5a9bf9b969de2878bf3adec640d3e94bac3d0dc47b', '[\"*\"]', NULL, '2023-03-26 10:56:04', '2023-03-26 10:56:04'),
(20, 'App\\Models\\Doctor', 60, 'MyApp', 'e51accd3e0f6e10645c42cb1b4dbb3140e7fd23c9fd90390a060bf53ffe5af7b', '[\"doctors\"]', '2023-03-27 10:58:56', '2023-03-26 11:03:55', '2023-03-27 10:58:56'),
(21, 'App\\Models\\User', 99, 'samsung', 'c1837bd24fac68ce02b2b374a5c3f63e57889713bc2003bbf019e090b6a5e986', '[\"*\"]', '2023-03-27 12:13:40', '2023-03-27 11:00:27', '2023-03-27 12:13:40'),
(22, 'App\\Models\\User', 26, 'samsung', '4cd4d1c5f0c30c12c09fea4c0a65b72c27ff9f072ce940b5c569ef6bdd396ee9', '[\"*\"]', NULL, '2023-03-27 18:21:37', '2023-03-27 18:21:37'),
(23, 'App\\Models\\Doctor', 60, 'MyApp', '664a34612938f46a0eb433da913b1d34a17daf3892862d62067415aa327c61e7', '[\"doctors\"]', NULL, '2023-03-27 18:22:55', '2023-03-27 18:22:55'),
(24, 'App\\Models\\Doctor', 60, 'MyApp', 'c125425c34f46aa422bd2976066e3f6b59e1e79dfcc802ad6f52c7675a95b4b1', '[\"doctors\"]', NULL, '2023-03-27 18:25:05', '2023-03-27 18:25:05'),
(25, 'App\\Models\\User', 26, 'samsung', '358da500a9d24268a13e98b6ead7a673f701b5d2be3c10e9af2273559f939102', '[\"*\"]', '2023-03-27 18:58:31', '2023-03-27 18:28:07', '2023-03-27 18:58:31'),
(26, 'App\\Models\\User', 100, 'samsung', 'aa96fda42d25ca6cb664d0ddabb07dad02fa6d57a8eefc2b00bd35678f923ceb', '[\"*\"]', NULL, '2023-03-28 06:51:05', '2023-03-28 06:51:05'),
(27, 'App\\Models\\User', 100, 'samsung', '58fbc269ddaa55ce48cf4307dd696252552905e487d9063a979d4b2c19bf3368', '[\"*\"]', NULL, '2023-03-28 06:54:10', '2023-03-28 06:54:10'),
(28, 'App\\Models\\User', 100, 'samsung', 'e4e07dab32c91aa94e26eda4051cab12590c81c3e2304429bf09524e054a9744', '[\"*\"]', NULL, '2023-03-28 06:56:02', '2023-03-28 06:56:02'),
(29, 'App\\Models\\Doctor', 60, 'MyApp', '68d79bf576a07e0139e4316a5d3bc951f8c87ca4bbd73330afb53395c4a9c669', '[\"doctors\"]', NULL, '2023-03-28 06:58:36', '2023-03-28 06:58:36'),
(30, 'App\\Models\\User', 100, 'samsung', '49b20dffb4ca3e795977f40c544593f145246e96d77d2c2c89e31b138a3e2c66', '[\"*\"]', '2023-03-28 09:09:07', '2023-03-28 07:00:04', '2023-03-28 09:09:07'),
(31, 'App\\Models\\Doctor', 60, 'MyApp', 'ff083e0fe432a990980e8655a2345cdd8a4f1076b54a18248c4d61313c5a3928', '[\"doctors\"]', '2023-03-28 09:09:07', '2023-03-28 07:44:56', '2023-03-28 09:09:07'),
(32, 'App\\Models\\User', 101, 'samsung', 'c05f03565eb4e5b8dee96d86fb6eea5743709536038bf79830785c2cc0a72d19', '[\"*\"]', NULL, '2023-03-28 09:08:55', '2023-03-28 09:08:55'),
(33, 'App\\Models\\User', 101, 'samsung', '32328a4f9c62cbaaffe3e0a53033962d1659ecc0647044ce016670a7b5402cac', '[\"*\"]', NULL, '2023-03-28 09:08:56', '2023-03-28 09:08:56'),
(34, 'App\\Models\\Doctor', 60, 'MyApp', '7a697382b7c86fd93ba753bdfcc82a46cef38dc386f837bb539e7ec21c6b6581', '[\"doctors\"]', NULL, '2023-03-28 09:08:57', '2023-03-28 09:08:57'),
(35, 'App\\Models\\User', 26, 'samsung', '630bb72aa040adf9a673f77a9ff8d5ca6ae89b0c52ab930182f7ae8fd41abbf2', '[\"*\"]', NULL, '2023-06-15 16:16:34', '2023-06-15 16:16:34'),
(36, 'App\\Models\\User', 27, 'samsung', '474c51aac0751a3ffeff809175e9b27af9be089a2955306e326f3a4213353c2b', '[\"*\"]', NULL, '2023-06-15 16:25:42', '2023-06-15 16:25:42'),
(37, 'App\\Models\\User', 29, 'samsung', '893b18b64d4258ee158f69aa4158c4f9ad671d911a18638d37f0f632b25d53b9', '[\"*\"]', NULL, '2023-06-20 21:04:58', '2023-06-20 21:04:58'),
(38, 'App\\Models\\User', 40, 'samsung', '4128e3c8c7f377c03e879ca0a98735df40bca1c8d420c4b844bb2ba14ae15749', '[\"*\"]', '2023-09-28 08:47:07', '2023-09-28 08:46:31', '2023-09-28 08:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `user_type` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`id`, `name`, `video`, `cate_id`, `created_at`, `updated_at`, `img`, `user_type`) VALUES
(75, 'Escaping videogame', '1685771910.mp4', 1, '2023-04-17 02:26:22', '2023-06-03 03:58:30', '1685771910.jfif', '1'),
(76, 'How turn players', '1685772111.mp4', 1, '2023-04-17 02:34:38', '2023-06-03 04:01:51', '1685772111.jfif', '1'),
(77, 'Good or Bad JREclips', '1685772220.mp4', 1, '2023-04-17 02:35:08', '2023-06-03 04:03:40', '1685772220.jfif', '1'),
(78, 'Breaking Through', '1685772034.mp4', 5, '2023-04-17 02:35:36', '2023-06-03 04:00:34', '1685772034.jfif', '1'),
(79, 'Ep. 306', '1685772254.mp4', 4, '2023-04-17 02:36:35', '2023-06-03 04:04:14', '1685772254.jfif', '1'),
(80, 'Shopaholic', '1685772286.mp4', 4, '2023-04-17 02:40:21', '2023-06-03 04:04:46', '1685772286.jfif', '1'),
(81, 'Intl Society for Sports Psychiatry', '1685772350.mp4', 5, '2023-04-17 02:42:22', '2023-06-03 04:05:50', '1685772350.jfif', '1'),
(82, 'Plastic Surgeons', '1685772406.mp4', 3, '2023-04-17 02:43:48', '2023-06-03 04:06:46', '1685772406.jfif', '1'),
(83, 'Why We Became Plastic Surgeons', '1685772444.mp4', 3, '2023-04-17 02:44:21', '2023-06-03 04:07:24', '1685772444.jfif', '0'),
(84, 'Craving_the_Truth', '1685772482.mp4', 2, '2023-04-17 02:47:24', '2023-06-03 04:08:02', '1685772482.jfif', '0'),
(85, 'Diet_Doctor_Podcast', '1685772525.mp4', 2, '2023-04-17 02:48:07', '2023-06-03 04:08:46', '1685772525.jfif', '0'),
(86, 'Your Life_ How Can You Fix ItThe Quint', '1685772636.mp3', 7, '2023-04-17 03:00:53', '2023-06-03 04:10:37', '1685772636.jfif', '0'),
(87, 'Social Media Addiction', '1685772690.mp4', 7, '2023-04-17 03:03:19', '2023-06-03 04:11:30', '1685772690.jfif', '0'),
(88, 'What are you running from', '1685772730.mp4', 6, '2023-04-17 03:04:05', '2023-06-03 04:12:10', '1685772730.jfif', '0'),
(89, 'THE DANGER OF WORKAHOLISM', '1685772770.mp4', 6, '2023-04-17 03:04:40', '2023-06-03 04:12:50', '1685772770.jfif', '0'),
(95, 'Escaping videogame', '1685771910.mp4', 1, '2023-04-17 02:26:22', '2023-06-03 03:58:30', '1685771910.jfif', '0'),
(96, 'How turn players', '1685772111.mp4', 1, '2023-04-17 02:34:38', '2023-06-03 04:01:51', '1685772111.jfif', '0'),
(97, 'Good or Bad JREclips', '1685772220.mp4', 1, '2023-04-17 02:35:08', '2023-06-03 04:03:40', '1685772220.jfif', '0'),
(98, 'Breaking Through', '1685772034.mp4', 5, '2023-04-17 02:35:36', '2023-06-03 04:00:34', '1685772034.jfif', '0'),
(99, 'Ep. 306', '1685772254.mp4', 4, '2023-04-17 02:36:35', '2023-06-03 04:04:14', '1685772254.jfif', '0'),
(100, 'Shopaholic', '1685772286.mp4', 4, '2023-04-17 02:40:21', '2023-06-03 04:04:46', '1685772286.jfif', '0'),
(101, 'Intl Society for Sports Psychiatry', '1685772350.mp4', 5, '2023-04-17 02:42:22', '2023-06-03 04:05:50', '1685772350.jfif', '0'),
(102, 'Plastic Surgeons', '1685772406.mp4', 3, '2023-04-17 02:43:48', '2023-06-03 04:06:46', '1685772406.jfif', '0'),
(103, 'Why We Became Plastic Surgeons', '1685772444.mp4', 3, '2023-04-17 02:44:21', '2023-06-03 04:07:24', '1685772444.jfif', '1'),
(104, 'Craving_the_Truth', '1685772482.mp4', 2, '2023-04-17 02:47:24', '2023-06-03 04:08:02', '1685772482.jfif', '1'),
(105, 'Diet_Doctor_Podcast', '1685772525.mp4', 2, '2023-04-17 02:48:07', '2023-06-03 04:08:46', '1685772525.jfif', '1'),
(106, 'Your Life_ How Can You Fix ItThe Quint', '1685772636.mp3', 7, '2023-04-17 03:00:53', '2023-06-03 04:10:37', '1685772636.jfif', '1'),
(107, 'Social Media Addiction', '1685772690.mp4', 7, '2023-04-17 03:03:19', '2023-06-03 04:11:30', '1685772690.jfif', '1'),
(108, 'What are you running from', '1685772730.mp4', 6, '2023-04-17 03:04:05', '2023-06-03 04:12:10', '1685772730.jfif', '1'),
(109, 'THE DANGER OF WORKAHOLISM', '1685772770.mp4', 6, '2023-04-17 03:04:40', '2023-06-03 04:12:50', '1685772770.jfif', '1');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `doctor_id`, `created_at`, `updated_at`) VALUES
(5, 'Qui asperiores nemo doloremque aliquam in molestias. Iure rerum voluptate accusamus fugiat. Dolores sapiente beatae est maiores repudiandae quis eum. Magnam odio qui nostrum sit.', 70, '2023-03-11 14:41:18', '2023-03-11 14:41:18'),
(6, 'Omnis atque autem ducimus eius sint corporis. Aliquid unde sint ea quis dicta repellat maxime.', 70, '2023-03-12 15:07:08', '2023-03-12 15:07:08'),
(7, 'Vel quia non beatae dolorum. Fuga tempore itaque neque dolorum. Consequatur qui id quis. Eos ut sapiente et tempore aut hic.', 6, '2023-03-12 15:07:08', '2023-03-12 15:07:08'),
(9, 'Molestiae tempora aspernatur qui consequatur distinctio. Maxime rerum illum voluptatem saepe rem quisquam deserunt iusto. Quaerat voluptas et quia quia rem veniam.', 10, '2023-03-12 15:07:08', '2023-03-12 15:07:08'),
(10, 'Est cum facilis qui maxime magni quo. Quia et rerum consectetur. Laborum molestias sapiente ab. Ipsa odit et harum dolorem eum.', 8, '2023-03-12 15:07:08', '2023-03-12 15:07:08'),
(11, 'At laborum asperiores est odio. Ut harum ullam minima magnam cumque non. Rerum asperiores iusto veniam minus incidunt eos ipsam cupiditate. Minus doloribus ipsa sint ut.', 2, '2023-03-24 16:52:49', '2023-03-24 16:52:49'),
(12, 'Eum magni explicabo excepturi et laudantium accusantium et dolor. Quasi velit sint hic sit dolorum. Illum omnis quis est tenetur nesciunt quo. Quas sint commodi sed pariatur voluptatem nam a et.', 3, '2023-03-24 16:52:49', '2023-03-24 16:52:49'),
(14, 'Quod aut eos et sit. Doloribus autem sit minima tenetur ipsam occaecati iure nihil. Ut quos quam non esse.', 1, '2023-03-24 16:52:49', '2023-03-24 16:52:49'),
(16, 'Aut recusandae minima dolor. At laborum aspernatur ut aut. Vero aliquam facilis et eum consectetur qui.', 8, '2023-03-24 16:53:36', '2023-03-24 16:53:36'),
(17, 'Voluptas consectetur fugiat alias quis tempore ut autem. Sunt occaecati id et animi natus necessitatibus. Error perferendis quo officia asperiores.', 3, '2023-03-24 16:53:36', '2023-03-24 16:53:36'),
(18, 'Nulla numquam at corrupti doloribus sed. Tempora et optio accusantium voluptas et laudantium. Minus et adipisci suscipit recusandae.', 8, '2023-03-24 16:53:36', '2023-03-24 16:53:36'),
(19, 'Dolor repudiandae illo soluta illo mollitia. Recusandae et fugiat ratione voluptatem neque sed voluptas quo. Modi officiis ipsam consequuntur ut. Praesentium dolores et minima voluptates.', 1, '2023-03-24 16:53:36', '2023-03-24 16:53:36'),
(20, 'Quisquam nulla excepturi rerum accusantium voluptas maiores minima sequi. Reprehenderit et et soluta. Quae facere enim et quisquam ullam quis quam sed. Culpa eum illum maxime et fuga ex.', 2, '2023-03-24 16:53:36', '2023-03-24 16:53:36'),
(21, 'Dolorum est quia tenetur distinctio voluptas corporis nesciunt. Necessitatibus dolor exercitationem natus impedit fuga harum. Animi ab ex et. Ratione maxime dolores quas fugiat repudiandae.', 15, '2023-03-25 10:17:40', '2023-03-25 10:17:40'),
(22, 'Autem dolore nostrum repellat minima deserunt. Ullam veniam adipisci saepe quo esse voluptates corporis. Sunt exercitationem sit voluptatibus dolor consequatur.', 9, '2023-03-25 10:17:41', '2023-03-25 10:17:41'),
(23, 'Sed qui exercitationem quos minus soluta sint. Architecto vel accusamus dolores unde est ut.', 5, '2023-03-25 10:17:41', '2023-03-25 10:17:41'),
(24, 'Ex enim in numquam est officia. Cupiditate animi vero sint repellendus ipsam voluptatem quasi. Quia facere at numquam praesentium eos aut dolores eos.', 13, '2023-03-25 10:17:41', '2023-03-25 10:17:41'),
(25, 'Ut pariatur sit fuga natus et neque. Voluptates illo esse sunt sunt. Est voluptatum laboriosam doloribus. Nam minus enim qui inventore.', 11, '2023-03-25 10:17:41', '2023-03-25 10:17:41'),
(26, 'Beatae eius odit voluptatem. Quia dolorum autem autem quia ad. Non perferendis ipsum et aut et. Omnis eligendi laudantium fugiat eveniet sit dignissimos.', 3, '2023-03-25 10:17:56', '2023-03-25 10:17:56'),
(27, 'Rerum a non ad. Animi ex et veritatis dolore consequatur rerum eos. Nihil nulla harum aperiam voluptatibus eaque rem consequatur. Architecto ut nobis recusandae nihil sed eos iure harum.', 13, '2023-03-25 10:17:56', '2023-03-25 10:17:56'),
(28, 'Repellat et consequatur facilis explicabo unde. Ut quia asperiores dolore. Ex accusamus autem neque in.', 4, '2023-03-25 10:17:56', '2023-03-25 10:17:56'),
(29, 'Ipsam sit rerum corporis accusantium. Soluta quod expedita officiis et velit consequatur asperiores. Commodi rem ipsam qui.', 14, '2023-03-25 10:17:56', '2023-03-25 10:17:56'),
(30, 'Pariatur nam corrupti exercitationem sed esse. Fugiat culpa enim sed dolorem eos rerum a. Dolorem sunt optio aut corporis et.', 7, '2023-03-25 10:17:56', '2023-03-25 10:17:56'),
(31, 'Iure provident et officia nesciunt repellat provident quo. Eos voluptatibus voluptas ullam expedita ab pariatur. Qui maiores quia non sint sapiente. Recusandae eveniet quis sed ut.', 21, '2023-03-25 12:31:07', '2023-03-25 12:31:07'),
(32, 'Dolorem aut molestiae omnis eum tempore possimus. Esse aut aspernatur ut vero rerum facere expedita. Dolor similique ut et perspiciatis et assumenda.', 17, '2023-03-25 12:31:07', '2023-03-25 12:31:07'),
(33, 'Distinctio repellendus quia quam alias aut distinctio. Rerum optio soluta beatae blanditiis aperiam. Et perferendis omnis sint repudiandae. Earum id iure nobis aliquam est laborum.', 5, '2023-03-25 12:31:07', '2023-03-25 12:31:07'),
(34, 'Qui libero dolorum porro magnam et. Atque voluptatem vero at autem nihil. Dolore ab debitis deleniti et aut nihil deserunt. Vitae eos laboriosam maxime ut quo odit.', 23, '2023-03-25 12:31:07', '2023-03-25 12:31:07'),
(35, 'Optio enim est voluptas quibusdam ut. Repellendus et aut dolores fugit distinctio corporis dolore. Neque rerum labore ipsam enim. Magni dolores fugiat occaecati modi.', 23, '2023-03-25 12:31:07', '2023-03-25 12:31:07'),
(36, 'Corporis debitis sint expedita enim. Quos quia cumque illo reprehenderit ea provident ut. Maiores minima assumenda dignissimos placeat quam debitis labore ut.', 1, '2023-03-25 12:32:33', '2023-03-25 12:32:33'),
(37, 'Ut delectus odio sint alias harum. Voluptas error aut doloremque doloremque illo. Ut quaerat culpa sed delectus enim nihil.', 11, '2023-03-25 12:32:34', '2023-03-25 12:32:34'),
(38, 'Illum eum a ut beatae sint dolorem aut. Culpa dolores molestiae magni qui ipsa eos ut odio.', 12, '2023-03-25 12:32:34', '2023-03-25 12:32:34'),
(39, 'Eligendi omnis ipsam hic repellat aut. At maxime impedit adipisci numquam. Quia consequatur distinctio et inventore. Porro esse deserunt eos repellat dicta non sint.', 18, '2023-03-25 12:32:34', '2023-03-25 12:32:34'),
(40, 'Doloremque minus dolor cumque dicta aut fugiat atque. Ut quibusdam blanditiis corporis voluptate reiciendis ut ratione. Placeat voluptatem hic assumenda quaerat nam qui modi nisi.', 26, '2023-03-25 12:32:34', '2023-03-25 12:32:34'),
(41, 'Eligendi iure non veniam enim. Voluptate facere doloribus inventore tempore qui. Accusamus voluptatem quidem labore fugit ea aspernatur suscipit.', 22, '2023-03-25 12:33:03', '2023-03-25 12:33:03'),
(42, 'Accusantium non et ut id sunt assumenda. Veniam qui et tempora et. Soluta illum architecto nihil quam. Quis consectetur velit molestias ut.', 9, '2023-03-25 12:33:03', '2023-03-25 12:33:03'),
(43, 'Labore nostrum qui exercitationem. Ea alias ut dicta odio eveniet rerum labore qui.', 16, '2023-03-25 12:33:03', '2023-03-25 12:33:03'),
(44, 'Quia quae ut et doloribus quia quos. Tenetur labore quos corporis. Est aliquam quae a libero unde voluptatem. Dignissimos fuga accusamus deserunt. Facilis neque illum aliquam aut molestias.', 13, '2023-03-25 12:33:03', '2023-03-25 12:33:03'),
(45, 'Cupiditate voluptas cumque eum sit numquam adipisci ea. Animi et aut at ipsa quas illum. Sed quos aperiam qui. Voluptas nihil ea dolor modi enim molestias porro.', 15, '2023-03-25 12:33:03', '2023-03-25 12:33:03'),
(46, 'Ipsam eos omnis et. Non atque qui expedita delectus quam explicabo id. Velit beatae qui doloremque assumenda.', 40, '2023-03-25 13:12:58', '2023-03-25 13:12:58'),
(47, 'Magnam perferendis ratione temporibus quae. Saepe ut reiciendis est non non eum architecto. Consequatur omnis ullam error autem asperiores molestiae.', 34, '2023-03-25 13:12:58', '2023-03-25 13:12:58'),
(48, 'Inventore harum animi autem dolore optio rem laudantium. Hic cupiditate excepturi rerum non. Magnam illum odio quae. Aspernatur sapiente illum ea excepturi aut temporibus maiores.', 34, '2023-03-25 13:12:59', '2023-03-25 13:12:59'),
(49, 'Dolores vero sit sint quaerat delectus quae. Non amet praesentium est ut quo. Est porro fugit fugiat quam beatae dicta.', 4, '2023-03-25 13:12:59', '2023-03-25 13:12:59'),
(50, 'Placeat vitae maxime ut voluptatem quo. Et modi id aut aut. In molestias iste id itaque voluptatem voluptas animi sequi.', 17, '2023-03-25 13:12:59', '2023-03-25 13:12:59'),
(51, 'Delectus voluptas vero laborum et earum consequatur. Officiis aspernatur voluptatem sapiente. Culpa beatae delectus alias quidem odio vero delectus qui.', 14, '2023-03-25 13:17:15', '2023-03-25 13:17:15'),
(52, 'Vel reiciendis blanditiis officiis exercitationem. Quaerat officiis dolor et quae commodi. Hic et rem voluptatem est rerum sunt et. Laborum facere velit repellat voluptas non iure.', 14, '2023-03-25 13:17:15', '2023-03-25 13:17:15'),
(53, 'Deserunt nam ducimus blanditiis et id qui. Voluptas in laboriosam perferendis amet odio aliquam dolore. Et ea ab velit vel rerum.', 21, '2023-03-25 13:17:15', '2023-03-25 13:17:15'),
(54, 'Omnis non aut consequatur dolores tempore provident quo. Deleniti iusto ut voluptas fugit. Velit maiores est dolorum quasi vel.', 12, '2023-03-25 13:17:15', '2023-03-25 13:17:15'),
(55, 'Voluptatem dicta amet voluptas aspernatur rerum dolores. Voluptatem praesentium recusandae iure aspernatur esse. Et voluptatem animi quaerat veritatis id quia sint ipsa.', 7, '2023-03-25 13:17:15', '2023-03-25 13:17:15'),
(56, 'Quo praesentium ad quas sapiente. Qui sequi molestias atque et. Voluptas quo eum et ipsum quae ut minima. Incidunt nobis unde et non eos consequatur nihil.', 25, '2023-03-25 13:18:15', '2023-03-25 13:18:15'),
(57, 'Magnam ut dolorem sunt labore repellendus corrupti velit. Amet beatae aperiam ipsam.', 49, '2023-03-25 13:18:15', '2023-03-25 13:18:15'),
(58, 'Tenetur voluptas et delectus exercitationem impedit ad ea. Recusandae nemo deleniti deleniti et omnis. Corporis qui quo hic sed nostrum similique magnam culpa. Non laboriosam alias earum consectetur.', 48, '2023-03-25 13:18:15', '2023-03-25 13:18:15'),
(59, 'Itaque labore illo aliquid et. Qui vel ipsum laborum delectus amet ea doloribus. Commodi est quaerat dolorem suscipit repellat ut.', 43, '2023-03-25 13:18:15', '2023-03-25 13:18:15'),
(60, 'Voluptates aut ea veritatis reiciendis nam in. Cum quia consectetur ipsam autem et porro. Quo velit commodi praesentium harum dolores neque. Sit distinctio qui sint ea aut dolorum.', 17, '2023-03-25 13:18:15', '2023-03-25 13:18:15'),
(61, 'Voluptatem et error exercitationem ut voluptatem labore. In esse ipsum eaque. Vero molestiae molestiae eum ut eligendi aut quas.', 37, '2023-03-25 13:31:22', '2023-03-25 13:31:22'),
(62, 'Ex aspernatur eum neque qui. Explicabo voluptatibus et accusamus quidem. Et reiciendis iure ipsa placeat.', 42, '2023-03-25 13:31:22', '2023-03-25 13:31:22'),
(63, 'Deserunt minima porro et autem reprehenderit ut eligendi nisi. Id autem dolorum perspiciatis eius et. Excepturi consequatur odio aut aut dolorem placeat.', 9, '2023-03-25 13:31:22', '2023-03-25 13:31:22'),
(64, 'Earum rerum nobis nostrum adipisci fugiat ratione. Ea dolorem aut aut magnam aut.', 21, '2023-03-25 13:31:22', '2023-03-25 13:31:22'),
(65, 'Tempora nemo labore nemo. Nostrum fuga quae consectetur vel. Excepturi velit accusantium ipsum ipsa sunt est. Animi error est quo autem.', 53, '2023-03-25 13:31:22', '2023-03-25 13:31:22'),
(66, 'Sapiente facilis unde et ipsam voluptate culpa cumque non. Optio est ex quasi omnis odio quibusdam. Molestias deleniti porro est enim non.', 24, '2023-03-26 10:59:34', '2023-03-26 10:59:34'),
(67, 'Error impedit incidunt doloremque vitae aut consequatur. Ea magni et minima repudiandae vel. Nobis qui maiores omnis.', 7, '2023-03-26 10:59:34', '2023-03-26 10:59:34'),
(68, 'Maxime minima omnis corporis quia. Veritatis non perspiciatis magnam eos tempora error alias. Amet dolor explicabo sunt vero voluptas sed et.', 60, '2023-03-26 10:59:35', '2023-03-26 10:59:35'),
(69, 'Velit rerum sint reprehenderit debitis eos nesciunt et. Corrupti officiis nostrum omnis veniam sapiente reprehenderit tenetur. Harum neque sed fuga.', 49, '2023-03-26 10:59:35', '2023-03-26 10:59:35'),
(70, 'Vero adipisci accusamus non odio. Rem consequuntur impedit consequuntur deserunt corporis voluptatem sint sit. Quod deserunt ut eos. Fuga exercitationem aliquid sint doloremque exercitationem sunt.', 18, '2023-03-26 10:59:35', '2023-03-26 10:59:35'),
(72, 'hhhhhhh', 2, '2023-06-04 07:44:04', '2023-06-04 07:44:04'),
(73, 'ppppppp', 2, '2023-06-04 19:24:15', '2023-06-04 19:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `like` enum('like','dislike') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `planoftreatment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `content`, `user_id`, `doctor_id`, `created_at`, `updated_at`, `planoftreatment`) VALUES
(1, 'You suffer from wasting time on social media and fell nervously and sad\n                                and suffer from\n                                mental disorder. you can make a decision. you suffer from lonliness', 22, 70, '2023-03-11 14:41:24', '2023-03-11 14:41:24', 'Delete your social media apps from your smartphone. While you can still access them from your personal computer'),
(2, 'you suffer from lonliness', 17, 76, '2023-03-11 14:41:24', '2023-03-11 14:41:24', ' Eat healthy food'),
(3, 'to help reduce medication errors, QD and QOD (every other day) are on the JCAHO “do not use” list. So you need to write out “daily” or “every other day.', 17, 70, '2023-03-11 14:41:24', '2023-03-11 14:41:24', 'Learn skill '),
(4, 'Molestiae dolor eum ducimus rerum. Deleniti repellendus alias eum aliquid veniam dolores velit. Voluptas dolorem eos in quod excepturi inventore.', 17, 1, '2023-03-11 14:41:24', '2023-03-11 14:41:24', '  Love your self'),
(5, 'Delectus qui non omnis eum odit explicabo ut. Dolor laudantium dolorum ut est ex ut.', 17, 5, '2023-03-11 14:41:24', '2023-03-11 14:41:24', 'Read any thing you want'),
(21, 'Aut possimus alias quae beatae nisi numquam architecto. Quia doloribus fugiat enim nostrum hic sint. A similique ea est delectus.', 24, 70, '2023-03-24 16:53:37', '2023-03-24 16:53:37', 'Wake up early'),
(22, 'to help reduce medication errors, QD and QOD (every other day) are on the JCAHO “do not use” list. So you need to write out “daily” or “every other day.', 22, 76, '2023-06-23 22:30:59', '2023-06-23 22:30:59', NULL),
(26, 'Molestiae dolor eum ducimus rerum. Deleniti repellendus alias eum aliquid veniam dolores velit. Voluptas dolorem eos in quod excepturi inventore.', 22, 70, '2023-06-23 22:39:16', '2023-06-23 22:39:16', NULL),
(27, 'Molestiae dolor eum ducimus rerum. Deleniti repellendus alias eum aliquid veniam dolores velit. Voluptas dolorem eos in quod excepturi inventore.', 22, 70, '2023-06-23 22:44:47', '2023-06-23 22:44:47', NULL),
(28, 'Delectus qui non omnis eum odit explicabo ut. Dolor laudantium dolorum ut est ex ut.', 22, 70, '2023-06-23 22:54:14', '2023-06-23 22:54:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `emotion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `img`, `emotion_id`, `created_at`, `updated_at`) VALUES
(1, '1681844233.jpg', 4, '2023-04-18 16:57:13', '2023-04-18 16:57:13'),
(2, '1681844262.jpg', 4, '2023-04-18 16:57:42', '2023-04-18 16:57:42'),
(3, '1681844278.jfif', 4, '2023-04-18 16:57:58', '2023-04-18 16:57:58'),
(4, '1681844293.jfif', 4, '2023-04-18 16:58:13', '2023-04-18 16:58:13'),
(5, '1681844311.jfif', 4, '2023-04-18 16:58:31', '2023-04-18 16:58:31'),
(6, '1681844326.png', 4, '2023-04-18 16:58:46', '2023-04-18 16:58:46'),
(8, '1681844872.jpg', 1, '2023-04-18 17:07:52', '2023-04-18 17:07:52'),
(9, '1681844884.jpg', 1, '2023-04-18 17:08:04', '2023-04-18 17:08:04'),
(10, '1681844893.jpg', 1, '2023-04-18 17:08:13', '2023-04-18 17:08:13'),
(11, '1681844905.jpg', 1, '2023-04-18 17:08:25', '2023-04-18 17:08:25'),
(12, '1681844981.jpg', 2, '2023-04-18 17:09:41', '2023-04-18 17:09:41'),
(13, '1681844997.jpg', 2, '2023-04-18 17:09:57', '2023-04-18 17:09:57'),
(14, '1681845010.jpg', 2, '2023-04-18 17:10:10', '2023-04-18 17:10:10'),
(15, '1681845027.jpg', 2, '2023-04-18 17:10:27', '2023-04-18 17:10:27'),
(16, '1681845074.jpg', 3, '2023-04-18 17:11:14', '2023-04-18 17:11:14'),
(17, '1681845086.jpg', 3, '2023-04-18 17:11:26', '2023-04-18 17:11:26'),
(18, '1681845098.jpg', 3, '2023-04-18 17:11:38', '2023-04-18 17:11:38'),
(19, '1681845120.jfif', 3, '2023-04-18 17:12:00', '2023-04-18 17:12:00'),
(20, '1681845282.PNG', 5, '2023-04-18 17:14:42', '2023-04-18 17:14:42'),
(21, '1681845293.PNG', 5, '2023-04-18 17:14:53', '2023-04-18 17:14:53'),
(22, '1681845310.PNG', 5, '2023-04-18 17:15:10', '2023-04-18 17:15:10'),
(23, '1681845327.PNG', 5, '2023-04-18 17:15:27', '2023-04-18 17:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_articles`
--

CREATE TABLE `rate_articles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rate_articles`
--

INSERT INTO `rate_articles` (`user_id`, `article_id`, `rate`, `created_at`, `updated_at`) VALUES
(2, 3, 1, '2023-06-22 11:23:54', '2023-06-22 11:23:54'),
(2, 29, 5, '2023-06-22 11:49:51', '2023-06-22 11:49:51'),
(2, 30, 4, '2023-06-22 11:16:39', '2023-06-22 11:16:39'),
(22, 37, 4, '2023-06-23 18:57:49', '2023-06-23 18:57:49'),
(22, 38, 4, '2023-06-23 17:02:54', '2023-06-23 17:02:54'),
(22, 39, 4, '2023-06-23 19:03:40', '2023-06-23 19:03:40'),
(22, 40, 3, '2023-06-23 08:49:09', '2023-06-23 08:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `doctor_id`, `content`, `created_at`, `updated_at`) VALUES
(77, 2, 72, 'Good doctor. He is very simple and gentle in his behavior. ', '2023-06-12 09:28:37', NULL),
(78, 24, 72, 'Excellent doctor,great humanitarian.I have not yet met any other Doctor like him ', '2023-06-20 09:28:44', NULL),
(79, 22, 70, 'He is very supportive and suggest well. Good surgeon known from past 10 years', '2023-06-13 09:28:49', NULL),
(81, 25, 74, 'Very pleased with the doctor. He is caring, empathetic and most importantly you get to establish a connection with the Doctor', '2023-06-05 09:28:58', NULL),
(82, 22, 74, 'He is very good doctor, dedicated towards his proffetion and always cares his patients.A patient can freely interact with him', '2023-06-05 09:29:02', NULL),
(83, 22, 72, 'ggggggggggggggg', '2023-06-23 20:34:09', '2023-06-23 20:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `safespaces`
--

CREATE TABLE `safespaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `safespaces`
--

INSERT INTO `safespaces` (`id`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'In velit aut praesentium qui minima qui rerum. Repellat velit dolorum dignissimos nisi non ex eos. Tempore deleniti iusto itaque laboriosam aut odio.', 1, '2023-03-11 14:41:37', '2023-03-11 14:41:37'),
(3, 'Culpa iste voluptatibus eius aut iure repellat. Quis modi qui atque culpa atque eos rerum. Assumenda consequatur officia fugit similique blanditiis quidem ea.', 1, '2023-03-11 14:41:37', '2023-03-11 14:41:37'),
(4, 'Necessitatibus recusandae fugit rerum dolore non nesciunt minima. Et inventore eaque aut similique maxime voluptatem. Sit harum iste illum accusantium beatae quam ut.', 100, '2023-03-11 14:41:37', '2023-03-11 14:41:37'),
(5, 'Architecto perferendis tempore voluptate error in ducimus tempora. Eveniet omnis corrupti voluptas illo atque eveniet iure dolorem. Quisquam qui eligendi reprehenderit enim dolores culpa.', 100, '2023-03-11 14:41:37', '2023-03-11 14:41:37'),
(6, 'I have a different feeling. I would like to be healthier and be more social because my addiction affected my life', 22, '2023-03-12 15:07:14', '2023-03-12 15:07:14'),
(7, 'Now I am better than before, and that is why I love this very much, and I hope to be better like this always', 22, '2023-03-31 15:03:14', '2023-03-12 15:07:14'),
(9, 'ttttttttttttt', 22, '2023-06-23 20:32:53', '2023-06-23 20:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(1) NOT NULL DEFAULT 0,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `Gender`, `DateOfBirth`, `img`, `PhoneNumber`, `Address`, `remember_token`, `created_at`, `updated_at`, `role_as`, `google_id`, `facebook_id`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$tHJSdMn8PJ/J6XWvVlbLGezsqTDBOtfu9YCj6BtzFLh7jet..E3ZC', 'Male', '2023-05-06', '1681833217.jpg', '010257896689', 'mansoura', NULL, '2023-04-18 13:53:37', '2023-04-18 13:53:37', 1, NULL, NULL, 0, 'avatar.png', 0, NULL),
(17, 'yasmin', 'yasmin43@gmail.com', NULL, '$2y$10$dxhjfzxCK1hdyW4w6pZGHee1wXg/I6AayUAII68ieZ78ZFAvy4RSK', 'Female', '2023-03-18', '1685753329.jpg', '0105393599', 'mansoura', NULL, '2023-05-18 17:31:14', '2023-06-02 22:48:49', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(22, 'ali', 'ali@gmail.com', NULL, '$2y$10$AHqnS7rSItFYiwxKWPmh8OzILUbcF0zsoUijIjY/G44NGcGvlGsfS', 'Male', '2001-02-19', '1687447527.jpg', '0125856', 'mansoura', NULL, '2023-05-19 10:09:37', '2023-06-23 20:36:18', 0, NULL, NULL, 1, 'avatar.png', 0, '#673AB7'),
(24, 'hoda', 'hoda448@gmail.com', NULL, '$2y$10$DIqdVF9CPgVZd.17sYrH8ef4kGWiXVcc39rNFXkYogmkY4eGzvf2e', 'Female', '2016-01-01', '1685769421.jfif', '010256955555', 'mansoura', NULL, '2023-05-19 13:13:44', '2023-06-03 03:17:01', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(25, 'Dr:ahmed', 'ahmed2234@gmail.com', NULL, '$2y$10$oNuGhS3CcyLJEPEbX2ouguZPzjZ15KvuRC74W3qxGu5qKQZSDyZfi', 'Male', '1998-07-23', '1685769724.jpg', '0129384933', 'cairo', NULL, '2023-06-03 03:22:04', '2023-06-23 20:39:50', 0, NULL, NULL, 0, 'avatar.png', 0, '#673AB7'),
(27, 'Yasmin Ali', 'yomnaa@gmail.com', NULL, '$2y$10$j.SlYndRe2iUT1NVMfjOi.ESvZ.rhAZ/FdXcA6UewT01Ka06SXsdK', 'Female', '2020-05-08', '1685753329.jpg', '123586635', 'mansoura', NULL, '2023-06-15 16:25:42', '2023-06-23 18:32:28', 0, NULL, NULL, 1, 'avatar.png', 0, NULL),
(28, 'Yomna Ali', 'yomnaali463@gmail.com', NULL, '$2y$10$yKOuHJz3OU3Ng4FPdgFTq.GJ/bP57THX7ywndxDRwb9Qs.zWZZX0C', 'Male', '2023-06-06', '1687127948.jpg', '010563686345', NULL, NULL, '2023-06-18 19:24:28', '2023-06-18 19:39:09', 0, '114461719152591058014', NULL, 0, 'avatar.png', 0, NULL),
(29, 'yomna', 'yomnaa55@gmail.com', NULL, '$2y$10$SroAQqz6M9M2EQXdeVesWuo62WY0EkfVAlhsw9IzI5id3kMzfMlpK', 'Female', '2020-05-08', NULL, '123586635', 'mansoura', NULL, '2023-06-20 21:04:57', '2023-06-20 21:04:57', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(30, 'yomna', 'yomna2222@gmail.com', NULL, '$2y$10$LU4cGyQob8iXgvsTxM4GQ..82vl2kQCRsmHhNVMKKi87/iMDKmbza', 'Female', '1996-01-30', '1687549587.jpg', '016255896255', 'mansoura', NULL, '2023-06-23 16:46:27', '2023-06-23 16:46:27', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(31, 'ggggggg', 'yomna443@gmail.com', NULL, '$2y$10$WThFsJFEuoJuXgXcqb4xROMn4mm0qF2TjSW1tkviWK5tHGfW0DB7e', 'Female', '2023-06-03', '1687549664.jpeg', '010563686345', 'mansoura', NULL, '2023-06-23 16:47:44', '2023-06-23 16:47:44', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(32, 'yasmin', 'yasmin443@gmail.com', NULL, '$2y$10$vFkqSTbC6YIoTarmsLXsmO2UhhxfnWJvUzI6XXiqxynwMcdaPrTJ.', 'Female', '2023-06-16', '1687549868.jpg', 'yasmin', 'mansoura', NULL, '2023-06-23 16:51:08', '2023-06-23 16:51:08', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(36, 'yomna', 'yomnaa3333@gmail.com', NULL, '$2y$10$DitWUXzi8Tg1ysIDYRZZWOmHG2tRstUNFIodi0/b.aw/gXj5L1F1W', 'Female', '1998-02-02', '1687557383.jpg', '010564882556', 'mansoura', NULL, '2023-06-23 18:56:23', '2023-06-23 18:56:23', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(37, 'yomna', 'yomna4444@gmail.com', NULL, '$2y$10$S3DUfiH3KKvuS3nxd6SliuTVLSuJdsosa8YtNxF3r3l2dIrOWmhDm', 'Female', '1999-02-02', '1687557754.jpg', '016255896255', 'mansoura', NULL, '2023-06-23 19:02:34', '2023-06-23 19:02:34', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(38, 'yomna', 'yomnaa444@gmail.com', NULL, '$2y$10$Ib5tSBF75R2yji1qZ2ZpAuCHEKDgjba6cLKTA3wvyzBz1mjyxl.GS', 'Female', '1996-01-30', '1687562771.jpg', '010563686345', 'mansoura', NULL, '2023-06-23 20:26:11', '2023-06-23 20:26:11', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(39, 'yomna', 'yomna3333@gmail.com', NULL, '$2y$10$7XiUFqpe6JaQVzyveFjL0.cMHGuyOMMEaLWN/xCMyyLBA2dtl32Zu', 'Female', '2005-02-01', '1687563081.jpg', '010563686345', 'mansoura', NULL, '2023-06-23 20:31:21', '2023-06-23 20:31:21', 0, NULL, NULL, 0, 'avatar.png', 0, NULL),
(40, 'yomna', 'yomnaali55555@gmail.com', NULL, '$2y$10$vd9n4bxYxAztxz6fGGQlf.1JLUXfhcc0BMksymggZn9IEoxWuvcW2', 'Female', '2020-02-07', NULL, '01060525089', 'mansoura', NULL, '2023-09-28 08:46:30', '2023-09-28 08:46:30', 0, NULL, NULL, 0, 'avatar.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_categories`
--

CREATE TABLE `users_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) UNSIGNED DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_categories`
--

INSERT INTO `users_categories` (`id`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(16, 22, 7, '2023-01-17 12:47:23', '2023-06-21 06:09:36'),
(17, 2, 7, '2023-06-29 06:11:02', NULL),
(18, 27, 2, NULL, NULL),
(19, 24, 2, NULL, NULL),
(20, 32, 1, '2023-06-23 16:51:09', '2023-06-23 16:51:09'),
(21, 33, 5, '2023-06-23 16:56:27', '2023-06-23 16:56:27'),
(22, 34, 7, '2023-06-23 17:00:08', '2023-06-23 17:00:08'),
(23, 25, 5, '2023-06-23 17:01:30', '2023-06-23 17:01:30'),
(24, 36, 2, '2023-06-23 18:56:24', '2023-06-23 18:56:24'),
(25, 37, 2, '2023-06-23 19:02:34', '2023-06-23 19:02:34'),
(26, 38, 5, '2023-06-23 20:26:11', '2023-06-23 20:26:11'),
(27, 39, 5, '2023-06-23 20:31:21', '2023-06-23 20:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_favoirate_podcasts`
--

CREATE TABLE `user_favoirate_podcasts` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `favourite` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favoirate_podcasts`
--

INSERT INTO `user_favoirate_podcasts` (`user_id`, `podcast_id`, `favourite`, `created_at`, `updated_at`) VALUES
(22, 75, '1', NULL, NULL),
(22, 77, '1', NULL, NULL),
(22, 79, '1', NULL, NULL),
(22, 80, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favoirate_therapists`
--

CREATE TABLE `user_favoirate_therapists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `favourite` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favoirate_therapists`
--

INSERT INTO `user_favoirate_therapists` (`id`, `user_id`, `doctor_id`, `favourite`, `created_at`, `updated_at`) VALUES
(1, 2, 70, '0', '2023-06-03 15:23:11', '2023-06-03 15:23:14'),
(2, 2, 72, '0', '2023-06-03 15:23:35', '2023-06-03 15:23:49'),
(3, 2, 70, '0', '2023-06-03 15:25:03', '2023-06-03 15:26:55'),
(4, 2, 70, '0', '2023-06-03 15:27:23', '2023-06-03 16:26:56'),
(5, 2, 72, '0', '2023-06-03 16:27:16', '2023-06-03 16:27:24'),
(6, 2, 72, '0', '2023-06-03 16:49:06', '2023-06-03 16:49:13'),
(7, 2, 70, '0', '2023-06-03 16:49:16', '2023-06-03 16:49:18'),
(8, 2, 70, '0', '2023-06-03 16:49:21', '2023-06-03 16:49:24'),
(9, 2, 70, '0', '2023-06-03 17:01:35', '2023-06-03 17:01:37'),
(10, 2, 72, '0', '2023-06-03 17:01:40', '2023-06-03 17:02:20'),
(11, 2, 70, '0', '2023-06-03 17:02:17', '2023-06-03 17:02:24'),
(12, 2, 70, '0', '2023-06-03 17:04:26', '2023-06-03 17:05:02'),
(13, 2, 72, '0', '2023-06-03 17:04:31', '2023-06-03 17:05:07'),
(14, 2, 70, '0', '2023-06-03 17:05:05', '2023-06-03 17:06:30'),
(15, 2, 72, '0', '2023-06-03 17:06:32', '2023-06-03 17:06:34'),
(16, 2, 72, '0', '2023-06-03 17:06:36', '2023-06-03 19:11:46'),
(17, 2, 74, '0', '2023-06-03 17:06:49', '2023-06-03 17:06:59'),
(18, 2, 70, '0', '2023-06-03 17:50:46', '2023-06-03 17:55:20'),
(19, 2, 70, '0', '2023-06-03 18:53:27', '2023-06-03 19:11:38'),
(20, 2, 74, '0', '2023-06-03 18:53:44', '2023-06-21 07:30:46'),
(21, 2, 75, '0', '2023-06-03 18:53:57', '2023-06-21 07:40:40'),
(22, 2, 70, '0', '2023-06-03 19:11:41', '2023-06-04 04:59:03'),
(23, 2, 70, '0', '2023-06-04 04:59:06', '2023-06-04 04:59:10'),
(24, 2, 72, '0', '2023-06-04 04:59:24', '2023-06-18 18:52:28'),
(25, 2, 70, '0', '2023-06-04 10:06:28', '2023-06-18 18:52:10'),
(26, 2, 70, '0', '2023-06-18 18:52:15', '2023-06-18 18:52:20'),
(27, 2, 70, '0', '2023-06-18 18:52:35', '2023-06-21 07:20:31'),
(28, 28, 70, '1', '2023-06-18 19:53:37', '2023-06-18 19:53:37'),
(29, 28, 72, '1', '2023-06-18 19:53:40', '2023-06-18 19:53:40'),
(30, 28, 74, '1', '2023-06-18 19:54:17', '2023-06-18 19:54:17'),
(31, 28, 77, '0', '2023-06-18 19:54:21', '2023-06-18 20:23:49'),
(32, 28, 76, '1', '2023-06-18 19:54:27', '2023-06-18 19:54:27'),
(33, 22, 72, '0', '2023-06-19 13:15:07', '2023-06-19 13:15:19'),
(34, 2, 72, '0', '2023-06-20 21:28:01', '2023-06-20 21:28:16'),
(35, 2, 72, '0', '2023-06-20 21:28:35', '2023-06-21 07:21:03'),
(36, 2, 70, '0', '2023-06-21 07:20:34', '2023-06-21 07:22:25'),
(37, 2, 77, '0', '2023-06-21 07:20:50', '2023-06-21 07:21:19'),
(38, 2, 76, '1', '2023-06-21 07:20:56', '2023-06-21 07:20:56'),
(39, 2, 70, '0', '2023-06-21 07:22:27', '2023-06-21 07:23:43'),
(40, 2, 70, '0', '2023-06-21 07:23:49', '2023-06-21 07:24:31'),
(41, 2, 70, '0', '2023-06-21 07:24:38', '2023-06-21 07:25:46'),
(42, 2, 70, '0', '2023-06-21 07:25:50', '2023-06-21 07:27:00'),
(43, 2, 70, '0', '2023-06-21 07:27:04', '2023-06-21 07:27:19'),
(44, 2, 70, '0', '2023-06-21 07:27:19', '2023-06-21 07:27:37'),
(45, 2, 70, '0', '2023-06-21 07:27:42', '2023-06-21 07:31:49'),
(46, 2, 72, '0', '2023-06-21 07:27:57', '2023-06-21 19:35:20'),
(47, 2, 70, '0', '2023-06-21 07:31:53', '2023-06-21 07:33:24'),
(48, 2, 70, '0', '2023-06-21 07:33:40', '2023-06-21 07:33:49'),
(49, 2, 70, '0', '2023-06-21 07:36:50', '2023-06-21 07:36:56'),
(50, 2, 75, '1', '2023-06-21 07:40:45', '2023-06-21 07:40:45'),
(51, 2, 70, '0', '2023-06-21 09:30:16', '2023-06-21 16:10:40'),
(52, 2, 70, '0', '2023-06-21 16:10:41', '2023-06-21 16:10:47'),
(53, 2, 70, '0', '2023-06-21 19:34:45', '2023-06-21 19:34:55'),
(54, 2, 70, '0', '2023-06-22 06:40:38', '2023-06-22 06:40:43'),
(55, 27, 70, '0', '2023-06-22 09:14:58', '2023-06-22 09:15:06'),
(56, 27, 72, '1', '2023-06-22 09:15:11', '2023-06-22 09:15:11'),
(57, 24, 70, '1', '2023-06-22 10:50:11', '2023-06-22 10:50:11'),
(58, 2, 70, '0', '2023-06-22 11:35:07', '2023-06-22 11:36:04'),
(59, 2, 70, '0', '2023-06-22 11:37:34', '2023-06-22 11:37:38'),
(60, 2, 70, '0', '2023-06-22 11:42:27', '2023-06-22 11:42:32'),
(61, 2, 70, '0', '2023-06-22 11:44:33', '2023-06-22 11:47:00'),
(62, 22, 70, '0', '2023-06-23 17:12:55', '2023-06-23 19:04:12'),
(63, 22, 70, '1', '2023-06-23 19:04:17', '2023-06-23 19:04:17'),
(64, 22, 72, '1', '2023-06-23 19:04:28', '2023-06-23 19:04:28'),
(65, 22, 74, '0', '2023-06-23 20:33:12', '2023-06-23 20:33:25'),
(66, 2, 70, '0', '2023-07-03 12:35:51', '2023-07-03 12:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `yoga` varchar(255) DEFAULT NULL,
  `sport` varchar(255) DEFAULT NULL,
  `quick_and_easy` varchar(255) DEFAULT NULL,
  `sleep_better_meditation` varchar(255) DEFAULT NULL,
  `stress_management_meditation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `yoga`, `sport`, `quick_and_easy`, `sleep_better_meditation`, `stress_management_meditation`, `created_at`, `updated_at`) VALUES
(31, NULL, '1681996033.mp4', NULL, NULL, NULL, '2023-04-20 11:07:13', '2023-04-20 11:07:13'),
(32, NULL, '1681996046.mp4', NULL, NULL, NULL, '2023-04-20 11:07:26', '2023-04-20 11:07:26'),
(33, NULL, NULL, NULL, NULL, '1681996948.mp4', '2023-04-20 11:22:28', '2023-04-20 11:22:28'),
(34, NULL, NULL, NULL, NULL, '1681996979.mp4', '2023-04-20 11:22:59', '2023-04-20 11:22:59'),
(35, NULL, NULL, '1682000003.mp4', NULL, NULL, '2023-04-20 12:13:23', '2023-04-20 12:13:23'),
(36, NULL, NULL, '1682000101.mp4', NULL, NULL, '2023-04-20 12:15:01', '2023-04-20 12:15:01'),
(37, NULL, NULL, NULL, '1682000556.mp4', NULL, '2023-04-20 12:22:36', '2023-04-20 12:22:36'),
(38, NULL, NULL, NULL, '1682000730.mp4', NULL, '2023-04-20 12:25:30', '2023-04-20 12:25:30'),
(41, '1685210383.mp4', NULL, NULL, NULL, NULL, '2023-05-27 15:59:43', '2023-05-27 15:59:43'),
(42, '1685210398.mp4', NULL, NULL, NULL, NULL, '2023-05-27 15:59:58', '2023-05-27 15:59:58'),
(45, '1685210897.mp4', NULL, NULL, NULL, NULL, '2023-05-27 16:08:17', '2023-05-27 16:08:17'),
(46, '1685211003.mp4', NULL, NULL, NULL, NULL, '2023-05-27 16:10:03', '2023-05-27 16:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `yogas`
--

CREATE TABLE `yogas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yogas`
--

INSERT INTO `yogas` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`) VALUES
(1, 'How to do yoga?', 'How to do yoga?     Text(\'boat mode\'Text(\" sit upright on his seat, then lift his legs up and paddle with his hands as in a boat.\"Text(\'Fish Pose\'Text(\"lie on his tummy, bend his knees back up, then lift his chest back, and hold the tips of his fingers in his hands, moving like a small fish.\"Text(\'Butterfly mode\'Text(\"sit comfortably on his seat, with his back straight, and ask him to include his palms, and bend his legs in front of him, so that the soles of his feet touch, and let him flap his hands and feet like a butterfly\"Text(\'Cobra mode\'Text(\" lie on his stomach, extend his arms forward on the floor, raise his head and shoulders up, and then ask him to crawl like a snake.\"Text(\'Dolphin mode\'Text(\" stand bent on his elbows and knees, then gradually raise his knees until he is standing on his feet and elbows, in a dolphin-like position.\"', 'yogakid1.jpg', '2023-05-21 17:35:04', '2023-05-21 17:35:04'),
(2, 'Benefits of practicing yoga for young children', ' Text(\'Stress management\'Text(\"The breathing exercises and relaxation techniques that young children practice during yoga help them develop skills in dealing with stress and anxiety.\"Text(\'Controlling emotional outbursts\'Text(\"Young children\'s commitment to exercises may help them control their emotional outbursts and tantrums.Text(\'Develop focus and improve memory\'\"Text(\"One of the most important benefits of yoga for adults and children is the development of concentration and memory, and this may be clearly reflected in the learning of your young children in kindergarten and at home.\"Text(\'Learn discipline\'Text(\"Yoga requires performing certain movements with precision, which makes your little one stick to them as much as he can comprehend, and this teaches him the skill of discipline in the long run.\"', 'yogachild5.jpg', '2023-05-21 17:35:04', '2023-05-21 17:35:04'),
(3, 'Advice for helping family in teaching their children in yoga', '1- Do not force your little one to stick to the exact yoga poses, but you can adjust some of the movements to suit his little body\r\n2- Focus on enjoying the yoga practice, not on your little one doing the movements the right way.\r\n3- Involve your little one in choosing positions, and follow his interests and passions\r\n4- Be creative and have fun, but be safe.\r\n5- Have your child wear comfortable clothes and exercise barefoot.\r\n6- Prepare in advance what you would like to teach your child in a yoga lesson, taking into account all possibilities: that is, you must be flexible and prepared in the event that the lesson does not go as planned, such as changing the style and method more than once until you make sure that the children understand well the movements and their desire in imitating it.\"', 'yogachild8.jpg', '2023-04-11 14:03:56', '2023-05-21 17:43:03'),
(4, 'Types of yoga', 'Classification based on mind and body.\r\nRajayoga: Raja yoga focuses on meditation and contemplation in order to fully realize the self.\r\nHathayoga: Hatha yoga is the practice of yoga postures, or asana, using the body as a vehicle for self-transformation.\r\nClassification based on way of spiritual life.\r\nGyanyoga: It is a way of knowledge.\r\nKarmayoga: It is a way of work.\r\nBhaktiyoga: It is a way of worship.\r\nClassification based on a way of other things.\r\nSwaryoga: Emphasizes the most on breathing.\r\nKriyayoga: Emphasizes the most on blending Karmayoga (Tapa), Gyanyoga (Swadhyay) and Bhaktiyoga (Ishwar Pranidhan).', 'OIP.jpg', '2023-05-24 12:56:15', '2023-05-26 12:56:21'),
(5, 'yoga benefit', 'Yoga has been found to have physiological benefits for children through rehabilitation processes (29). Clinical studies also indicate that yoga improves academic performance and emotional balance [see Ref. (30)]. The mental benefits of yoga relate to calming the heart rate, which signals the brain to activate the parasympathetic nervous system. Similarly, yoga can guide relaxation because it reduces sympathetic activity . The sympathetic nervous system (fight or flight) is often engaged when children, similar to adults, are exposed to sensory overload. However, when the parasympathetic nervous system is activated, it increases our ability to focus and learn. Yoga is also said to reduce anxiety in young people as well as . Thus, yoga may assist healthy development and life-long learning', 'yogachild4.jpg', '2023-04-11 14:03:56', '2023-04-20 14:03:56'),
(6, 'How yoga helps your family connect...?', 'Sharing a yoga class with your child can also help deepen your connection with your children. You’re connecting movement with each breath you take, connecting with your inner self, and connecting with others — in this case, with your child.\r\n\r\nThere are two varieties of kid-friendly yoga poses you can try at home. The first promotes stillness and grounding. Here are a few examples:\r\n\r\nHappy baby pose: Lie on your back. Bend your knees into your belly and exhale. As you inhale, grab the outsides of your feet. Open your knees and bring them up toward your armpits.\r\n\r\nMountain pose: Stand tall with feet parallel and relax your tailbone down for a neutral pelvis. Lift up through the spine. Tuck chin in slightly, and keep head balanced over your shoulders.\r\n\r\nThe other variety of poses promotes balance. Here are a couple of examples:\r\n\r\nTree pose: Stand tall on one foot and turn the opposite knee out. Then place the sole of the opposite foot onto your ankle, calf or thigh. (Avoid placing your sole on the inside of your knee.) Put your palms together in front of your heart or face them with palms up.\r\n\r\nWarrior: Stand in mountain pose. Step back with one foot, angle it out while bending your front knee. Then bring your arms straight up and look up.\r\n\r\nPractice these poses through a game of mirroring. Children are curious and imitate what others do. Invite them to try a pose and don’t worry if it’s right or wrong, just as long as it’s safe', 'parekid.jpg', '2023-05-25 14:00:33', '2023-05-26 14:00:33'),
(7, 'Guide on How to Teach Yoga to Kids:', '1. Sell the Benefits of Yoga\r\nYou have to sell yoga to your children and not force it. Do it so your kids do not resent doing yoga and label it a joyless task. Tell them the benefits of yoga in simple words. Not only long term, tell your kids the short-term benefits of yoga. Describe yoga as a fun task that also caters to their specific needs. Tell your kids yoga will make them strong and better at other sports. With yoga, they will be healthy and get to play more. Let your kids understand that yoga improves their life. With yoga, they get good sleep and a sharper memory. Find other benefits that are unique and specific to your children. Also, tell your kids that yoga is like a game they will enjoy. It will not be a boring task they may have thought of. Once your kids understand the benefits of yoga, they will be eager to do it with you. \r\n\r\n \r\n\r\n2. Do the Demo\r\nParents are the first role models for their children and the latter copy and follow the former. To hook your kids to yoga, do some easy poses in front of them. Make these poses fun by dancing and jumping around. Play some music your children love. Ask your children to join in the fun. This way, you condition them to already like yoga even before starting. Now teaching yoga to kids becomes easy and a breeze for you. \r\n\r\n \r\n\r\n3. Kids will be Kids\r\nRemember that kids are little humans that are different from mature adults. The strict rules for adults do not apply to them. They are still growing in body and mind. If your kids like what you are teaching, they will follow it for life. Teaching yoga to kids has to be on their terms. So, don’t force them but adapt yoga as per their needs. For yoga, ask for your kids’ input too. They will give you some valid and good ideas. Put these ideas into their yoga sessions so your kids feel valued. Your kids will do the yoga and enjoy it too. \r\n\r\n \r\n\r\n4. Kid-Friendly Yoga\r\nHow to teach yoga to kids? Make yoga kid-friendly. Get bright yoga mats and not the dour ones for your kids. Better get some with their favorite superheroes on them. Get yoga toys, stuffed animals, and colored yoga cards. There are also story books that teach yoga poses in comic form. \r\n\r\nThen start with a short yoga session. Do not make the session tiring and long. Do a 10-15 minute session at first that has 3-4 yoga poses only. Too much time at first may bore your children. Include easy and basic poses that interest your children. Do not push your children hard and avoid tough yoga poses at first. Set a fixed time and place for their yoga and make it a daily event. It can be before or after school, at first. Then you can raise the time and include a bit more complex poses. This makes yoga easy for your kids to do and learn. Your kids develop an interest in yoga. They look forward to doing yoga as it becomes exciting and fun for them. We repeat, make yoga kid-friendly, and you make a yogi for life. \r\n\r\n \r\n\r\n5. Rules are Rules\r\nEven though yoga for kids is more relaxed, rules apply here too. With certain easy-to-follow rules in place, your kids get more out of yoga. They also behave well and learn social skills. Create these simple rules that your kids have to follow when doing yoga:\r\n\r\nGet your kids a yoga mat each.\r\nThey have to take care of it. \r\nAsk your kids to clean and store the mat after the yoga session.\r\nBefore the yoga session, ask your kids to place the yoga mat on the floor.\r\nThey have to do yoga within the mat and not outside it.\r\nYour kids have to follow the yoga teacher at all times and be safe.\r\nThey have to help each other and not fight.\r\nSo, these are the simple ground rules you can make. Ask your children to follow these rules at all times. This makes their yoga session a safe one that you can easily control. ', 'yogakid3.jpg', '2023-05-25 14:09:15', '2023-05-26 14:09:15'),
(8, 'continue:\r\n Guide on How to Teach Yoga to Kids', '6. Breathing is the Key\r\nBreathing techniques are the key to doing yoga. Teach your kids deep breathing techniques that are the basis for yoga. Make your kids aware of their breathing patterns. Teach your kids how to inhale and exhale through their gut. Deep breathing relaxes the body and mind. It also circulates oxygen-rich blood in the body. With deep breathing poses, your kids improve their focus and become calmer. Their energy levels also increase. This is different from sugar or cola-induced energy that spikes and then crashes soon after. With deep breathing poses, your kids become calmer, healthier, and more focused. \r\n\r\n \r\n\r\n7. Flexible Yoga Plan for Kids\r\nHow to teach yoga to kids? Make their yoga sessions simple and flexible. Do not make a hard and rigid yoga plan for your kids. Go for a flexible plan that has music, games, and songs. Start with a game that warms up the kids and gets them ready for yoga. Include a bit of dancing and songs too. Ask your kids to give their own unique names to these poses. Don’t force your kids if they do not want to do a certain pose. Go with the flow and do another one that is more exciting for your kids. Teach simple poses that require each other’s help. It helps the children connect and builds their social skills too. Do this and make your yoga sessions an inviting and fun place for your kids.\r\n\r\n \r\n\r\n8. Create Yoga Stories\r\nKids like stories, so why not include stories between yoga sessions. Read yoga stories related to the yoga poses in your sessions. Before doing a pose, make it more interesting by reading a story about it. Invite your children to create their own stories about the poses too. There are so many animals posing in yoga. Ask your kids to imagine stories about these animals and include them in the yoga narrative. Along with animals, yoga also has Sun salutes, tree, mountain, boat, star, and other poses. Create stories about these and include your children in them. It raises your kids’ interests and attracts them to yoga. \r\n\r\n \r\n\r\n9. Make Yoga a Positive Space\r\nMake your yoga sessions a positive place where your children feel welcomed. Your kids should enjoy yoga and not hate it and it’s up to you only to make that happen. Make your kids’ yoga time a happy one that they look forward to. Do not shout or be harsh with your children. Have patience when teaching yoga to kids. Praise your kids when the praise is due. Your kids should feel that their efforts matter. Ask your kids to give their input so they feel included. When your kids feel valued and praised, they will learn and improve their yoga. ', 'yogakid2.jpg\n', '2023-05-25 14:11:18', '2023-05-26 14:11:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_user`
--
ALTER TABLE `chat_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_sender_id_foreign` (`sender_id`),
  ADD KEY `conversations_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `emotions`
--
ALTER TABLE `emotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`),
  ADD KEY `post_likes_doctor_id_foreign` (`doctor_id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`user_id`,`doctor_id`),
  ADD KEY `rates_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `rate_articles`
--
ALTER TABLE `rate_articles`
  ADD PRIMARY KEY (`user_id`,`article_id`),
  ADD KEY `rate_articles_article_id_foreign` (`article_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `safespaces`
--
ALTER TABLE `safespaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_categories`
--
ALTER TABLE `users_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_categories_user_id_foreign` (`user_id`),
  ADD KEY `users_categories_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `user_favoirate_podcasts`
--
ALTER TABLE `user_favoirate_podcasts`
  ADD PRIMARY KEY (`user_id`,`podcast_id`),
  ADD KEY `user_favoirate_podcasts_podcast_id_foreign` (`podcast_id`);

--
-- Indexes for table `user_favoirate_therapists`
--
ALTER TABLE `user_favoirate_therapists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_favoirate_therapists_user_id_foreign` (`user_id`),
  ADD KEY `user_favoirate_therapists_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yogas`
--
ALTER TABLE `yogas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chat_user`
--
ALTER TABLE `chat_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `emotions`
--
ALTER TABLE `emotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rate_articles`
--
ALTER TABLE `rate_articles`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `safespaces`
--
ALTER TABLE `safespaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users_categories`
--
ALTER TABLE `users_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_favoirate_therapists`
--
ALTER TABLE `user_favoirate_therapists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `yogas`
--
ALTER TABLE `yogas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `ccic`
--
CREATE DATABASE IF NOT EXISTS `ccic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ccic`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dep` varchar(30) NOT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `dep`, `address`) VALUES
(1, 'bosy', '123456', 'bosy55', 'SE', NULL),
(8, 'yoyo', '123', 'yomna', 'BIO', NULL),
(9, 'yomna123', '12345', 'yomna', 'BIO', NULL),
(10, 'omar123', '123456', 'Omar Assad', 'IT', NULL),
(15, 'yahia44', '124789', 'Yahia Ahmed', 'CS', NULL),
(17, 'yomna1235', '258963', 'yomna ali helmy', 'SE', NULL),
(18, 'hady447', '455353', 'hady', 'IT', NULL),
(19, 'mohammed782', '123456789', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"task\",\"table\":\"users\"},{\"db\":\"task3\",\"table\":\"posts\"},{\"db\":\"task3\",\"table\":\"users\"},{\"db\":\"restaurant\",\"table\":\"users\"},{\"db\":\"restaurant\",\"table\":\"migrations\"},{\"db\":\"task3\",\"table\":\"followers\"},{\"db\":\"ccic\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-10-01 21:14:37', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_23_123235_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4yPYV1egSCMfkvZubkj1MkckE0ephMvW9FG2tJ24', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRFc4VXJlYXdUbElxeDVoSlhjUmJjOFl1Ukx1UGFVcmhKbmV3UW81VCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1695764691);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'yomna', 'yomnaa@gmail.com', '0', NULL, '$2y$10$i/9i2SztITNU/IRfOA8RteQpgk08Kn6.DB/PYLFIgrgVkUgOGQBIm', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-25 06:49:19', '2023-09-25 06:49:19'),
(2, 'admin', 'admin@gmail.com', '1', NULL, '$2y$10$knLYG5x3KgQpTGb.cNBgSOuJL8ZOkvBnpoPUeay8.HYompw7kWtcC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-25 11:23:09', '2023-09-25 11:23:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `task`
--
CREATE DATABASE IF NOT EXISTS `task` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `task`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `location` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `university` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `location`, `age`, `university`) VALUES
(1, '', '', '', 'dddd', 44, 'ddddddd'),
(2, '', '', '', 'dddd', 44, 'ddddddd'),
(3, '', '', '', 'dddd', 44, 'ddddddd'),
(4, '', '', '', 'dddd', 44, 'ddddddd'),
(5, '', '', '', 'dddd', 44, 'ddddddd'),
(6, '', '', '', 'dddd', 44, 'ddddddd'),
(7, '', '', '', 'dddd', 44, 'ddddddd'),
(8, '', '', '', 'dddd', 44, 'ddddddd'),
(9, 'yomna', '01056368634', 'yomnaa@gmail.com', '', 0, ''),
(10, 'yomna', '01056368634', 'yomnaa@gmail.com', '', 0, ''),
(11, 'yomna', '01056368634', 'yomnaa@gmail.com', '', 0, ''),
(12, '', '', '', 'dddd', 44, 'ddddddd'),
(13, '', '', '', 'dddd', 44, 'ddddddd'),
(14, '', '', '', 'dddd', 44, 'ddddddd'),
(15, 'yomna', '01056488255', 'admin@gmail.com', '', 0, ''),
(16, 'yomna', '01056488255', 'admin@gmail.com', '', 0, ''),
(17, 'yomna', '01056368634', 'yomnaa@gmail.com', 'dddd', 33, 'ddddddd'),
(18, 'yomna', '01056368634', 'yomnaa@gmail.com', 'dddd', 33, 'ddddddd'),
(19, 'Yahia Ahmed', '01056368634', 'yahia@gmail.com', 'mansoura', 25, 'mansoura'),
(20, 'yomna', '01056368634', 'yomnaa@gmail.com', 'mansoura', 33, 'mansoura'),
(21, 'yomna', '01056368634', 'yomnaa@gmail.com', 'mansoura', 33, 'mansoura');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `task3`
--
CREATE DATABASE IF NOT EXISTS `task3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `task3`;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `date_time`, `user_id`) VALUES
(1, 'hhhhhhhhhhh', '2023-09-25 15:01:45', 10),
(2, 'hhhhhhhhhhh', '2023-09-25 15:04:10', 10),
(8, 'hhhhhhhhhhh', '2023-09-26 14:25:58', 10),
(9, 'hhhhhhhhhhh', '2023-09-30 20:13:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `img` varchar(200) NOT NULL DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `img`) VALUES
(1, 'mohammed782', '123456789', 'profile.jpg'),
(2, 'mohammed782', '123456789', 'profile.jpg'),
(3, 'mohammed782', '123456789', 'profile.jpg'),
(4, 'mohammed782', '123456789', 'profile.jpg'),
(5, 'yomnaa44', '123456789', 'profile.jpg'),
(6, 'mohammed782', '123456', 'profile.jpg'),
(7, 'basem', '123456', '3772-337202-6392-face8.jpg'),
(8, 'jjj', 'llllllllll', 'profile.jpg'),
(9, 'osama331', '1111', '630-790323-6088-face3.jpg'),
(10, 'omar55488', '123456789', '5012-253338-7204-face4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`user_id`,`follower_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `follower_id` (`follower_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
