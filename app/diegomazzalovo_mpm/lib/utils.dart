


/*
void initData() async {

  var val = await getApplicationDocumentsDirectory();
  var p = val.path;
  var f = File('$p/rules.json');
  f.writeAsStringSync(json.encode(

      {
        "Classes": {
          "Rockerboy": {
            "Abstract": "REBEL ROCKERS WHO USE MUSIC AND REVOLT TO FIGHT AUTHORITY",
            "Description": "lf you live to rock, this is where you belong. Rockerboys are the street poets, social con­sciences and rebels of the 2000's. With the advent of digitai porta-studios and garage laser disk mastering, every Rocker with a message can take it to the street; put it in the record stores, bounce it off the comsats. Sometimes, this message isn't something the Corporations or the Government wants to hear. Sometimes what you say is going to get right in the faces of the powerful people who really run this world. But you don't care, because as a Rockerboy, you know it's your piace to challenge authority, whether in straight-out protest songs that tel1 it like it is, or just by playing kick-ass rock n' roll to get the people away from the TV sets and into the Streets. You have a proud history as a Rockerboy-Dylan, Springsteen, Who, Elvis, the Stones-the legions of hardrock heroes who told the truth with screaming guitars and gut-honest lyrics. As a Rockerboy, you have the power to get the people up-to lead, inspire and inform. A song from you can give the timid courage, the weak stren-gth, and the blind vision. Rockerboy legends have led armies against Corpo­rations and Governments. Rockerboy songs have ex­posed corruption, brought down dictators. lt's a lot of power for a guy doing gigs every night in another city. But you can handle it. After all-you carne to play!"
          },
          "Solo": {
            "Abstract": "HIRED ASSASSINS, BODYGUARDS, KILLERS, SOLDIERS",
            "Description": "You were re-born with a gun in yourhand-theflesh and blood hand, not the metallic weapons factory that covers most of your other arm. Whether as a freelance guard and killer­for-hire, or as one of the Corpora te cybersoldiers that enforce business deals and the Company's \"black op­erations\", you're one of the elite fighting machines of the Cyberpunk world. Most Solos have put in mili­tary time, either in a Corpo­rate army or in one of the Government's continuai \"policeactions\" aroundthe world. As the battle dam­age piles up, you start to rely more and more upon hardware-cyber­limbs for weapons and armor, bio-program chips to increase your reflexes and aware­ness, combat drugs to give you that edge over your opponents. When you're the best of the best, you might even leave the ranks of Corporate samurai and go ronin­freelancing your lethal talents as killer, body­guard or enforcer to whoever can pay your very high fees. Sounds good? There's a price-a heavy one. You've lost so much of your originai meat body that you're almost a machine. Your killing reflexes are so jacked up that you have to restrain yourself from going beserk at any moment. Years of combat drugs taken to keep the edge have given you terrifying addictions. You can't trust anyone-your mother, your friends, your lovers-no one. One night you sleep in a penthouse condo in the City-the next in a filthy alley on the Street. But that's the price of being the best. And you're willing to pay it. Because you're a Solo."
          },
          "Netrunner": {
            "Abstract": "CYBERNETIC COMPUTER HACKERS",
            "Description": "At three, your parents bought you an old Apple IV GS with a Radius 241 wall screen, and your life was changed. By fifth grade, you'd already masteredeverythingtheschool computer literacy lab could throw at you were already using Cand META-LINGUA to crack into the district's mainframe and change your grades. When you were thirteen,you shifted enough funds outof unprotected TransAmerican Bank accounts to finance your first neural interface plugs. Now, nothing can stop you. With your direct menta! link to the computer, you can plunge headfirst into the dizzying data-winds of the Net; the worldwide telecommu­nications system that joins humanity together. As an electronic wraith, you are the ultimate \"hacker\", your brain wired into special modems and com­puter links. You slip into the \"hardest\" mainframe systems with ease. Your de­fense and offense programs are arrayed at a touch of your menta! fingertips-a quick jolt of Demon or Vampire and the data fortresses fall. EBM. ITT. Sony­Matsushita-Ford. You've tackled them ali, buying, trading and selling their deepest secrets at will. Sometimes you uncover important things­ Corporate treachery or deadly secrets. But hat's not why you Netrun. You live for the new program, the next satellite downlink­ the next piece of hot data that comes your way. lt's only a matter of time, you think­ every year, the counter intrustion programs get better, the Artificial lntelligences smarter. Sooner or later, a faster program or programmer's going to catch up; reach out with electronic fingers through your interface plugs, and stop your heart. But time's on our side, and unti I the ride runs out, you'II be there, barebrained and headfirst in the Net."
          },
          "Techie": {
            "Abstract": "RENEGADE MECHANICS AND DOCTORS",
            "Description": "You can't leave anything alone if it sits near you for more than five minutes, you've disassembled it and made itintosomething new. You've always got at least two screwdrivers and a wrench in your pockets. Computer down? No prob­lem. Hydrogen burner out in your Metrocar? No prob­lem. Can't get the video to run or your interface plugs feedbacking? No problem. You make your living build­ing, fixing and modifying­a crucial occupation in a technological world where no one person really knows how half the stuff works. You can make some good bucks fixing everyday stuff, but for the serious money, you need to tackle the big jobs. lllegal weapons. lllegal or stolen cybertech. Corporate espionage and counterespionage gear for the big boys' \"black operations\". Neat little gadgets like thermite bombs and and hunter-killer robots for the occasionai \"termination\". lf you're any good, you're making a lot of money. And that money goes into new gadgets, hardware and information. You'II buy almost any new thing because it might have a dozen side applications you can use. Of course, your black market work isn't just making you friends it's also racking you up an impressive number of enemies as well; people who've run into your handiwork and resented it. So you'II invest a lot in defense systems and, if really pushed to the wall, cali in a few markers on a Solo or two. Your cousin down the street is just like you, but he's a Medtechie. In a world where half of medicine is relateci to mechanics, it makes sense. He can do a black market surgical technique faster than you can fix a toaster, and the Solos are always running to him to patch up wounds or install new illegal cyber­netics. He's got a lot of the same problems you have, but he's hoping his new job with Trauma Team lnc.TM will loosen things up. You hope he's right. You may be needing his services sooner than you think."
          },
          "Media": {
            "Abstract": "NEWSMEN AND REPORTERS WHO GO TO THE WALL FOR THE TRUTH",
            "Description": "They' re bending the truth out there. And you're go­ing to stop them. Some­one has to do it. The Cor­porations rule the world. They dump toxics, desta­bilize economies and commit murder with equal impunity. The Gov­ern ment won't stop them they own the Gov­ernment. The only thing between the Corpora­tions and world domina­tion is the Media. And that's you. You've got a videocam and a press pass and you're not afraid to use them. You're a national figure, seen nightly on a million TV sets worldwide. You've got fans, contracts and your own Corporation backing you. They can't make you disappear. When you dig down for the dirt and slime the corrupt officials and Corporate lapdogs try to cover up, you can dig deep. The next morning, you can put the details of their crimes all over the screamsheets and vidoscreens. Then the Government has to act. A week ago, you followed a hot lead and discovered a medicai corporation dumping illegal drugs on the Street. This week, you're uncovering a secret Corporate war in South America a war with jets, bombs, and cy­bertroops that's killed almost seven thou­sand of innocent people. Each new story you get to the air is one more blow for freedom and justice. Not to mention ratings. t isn't easy. They've tried to pressure your Mediacorp dozens of times. You've had sto­ries suppressed once, Corporate pressure forced them to cancel your news show. Each time, you went to the top, backed by your news director and your crew, and fought to get the story out. Three or four times, they tried to kill you - that's why your backup's a crack Solo bodyguard and you've got one of the top 'Runners in the business digging through the Net to back your stories. You have to be good, or else. Your 'Runner's just phoned in with a hot lead. He's found a line on twenty tons of illegal weapons being shifted to a port in Bolivia - possibly nuclear. You grab your gear and flag your backup. You're going to break those bastards. This time, for sure."
          },
          "Cop": {
            "Abstract": "MAXIMUM LAWMEN ON MEAN 21ST CENTURY STREETS",
            "Description": "In the old days, they only used to shoot at cops. Now you're lucky if you just take a slug. The Street is mean these days, filled with new drugs, new gangs, and new weapons that make an M-16 look like a kid's toy. lf you're on a City Force, you know how bad it is. You're canying at least four high caliber weapons, mostof them full-autotypes, wear­ing a Kevlar vest that'II stop 850 ft/lbs per square inch and you're still outgunned and outflanked. Half the gangs are cyber to begin with super speed, super reflexes, can see in the dark, carry weapons in their arms ... The other half are freelance Corpo­rate mercs-gangs hired by the Corps to enforce their policies on the Street. And there you are a beat cop or detective in an armored squadcar, pa­trolling this jungle with the heavy predators. The Corporate Cops­now that's the life. Heavy weapons, full combatar­mor, Trauma Team™ backup, AV-4 assault ve­hicles and gyrocopters with miniguns. But they only patrol the sectors of the City that the Government's licensed them for. The nice, clean sectors full of new office buildings and fancy res­taurants where no jacked up psychopunk is going to ever go on a killing spree with an AK-47. You get the bad sections. Burned out buildings and aban­doned cars, where every night is a new firefight and another great opportunity for a messy death. If you're really unlucky, you might draw PsychoSquad detail. PsychoSquad guys get the job of hunting down heavily armed and armored cyborgs who've flipped out. Sure, the PS guys have access to railguns, gyros and AVs. But a cyberpsycho can walk through machine gun fire and not feel it. A lot of the Psycho Squad detectives are crazy them­selves. They load up with. boosted reflexes, get some monsterously huge guns, and go hunt the cyborgs solo. But you're not that crazy. Yet.  "
          },
          "Corporate": {"The Corporations rule the Cyberpunk world. They control governments, mar­kets, nations, armies you name it. And you know that whoever controls the Cor­porations controls every­thing else. Right now, your life as a junior executive is anything but easy. There are guys underneath you who'd kill for a shot at your job. There are guys over you who'd kill to keep you outof theirjobs. And they're not kidding about the killing every up and corner in the Corporation has his own crew of Solos and Netrunners to cover his pet projects. Sabo­tage? Constantly. Bribery? Routine. Black­mail? Common. Promotion by assassina­tion? Always a possibilty. The stakes are that high one slip and you could be out on the Street with the rest of the trash. Or dead. And the projects your supervisors give you! Some are pretty straightforward design a new productivity schedule for the Corporation's medical subsidiary. Some are pretty raw send a \"black operations\" team into the City to spread a designer plague so the Marketing team can clean up selling the vaccine. Last week, you led a mixed team of Solos, 'Runners and Techies on a headhunting run to kidnap a researcher from a rival com­pany. The week before, your project was to steal plans for a new suborbital shuttle from the EuroSpace Agency (so that the Aero­space Division could copy the design and sell it to the Soviets). You told yourself you joined the Corporation to make it a better place work from the inside, you said. But now you're not so sure. Your ideals are a little tarnished and things are getting pretty bleak. But you can't worry about ethics now. You've got a report due in an hour, and it looks like that guy in Sales is planning to ice your database for good. You're gonna ice him first. "
          },
          "Fixer": {
            "Abstract": "DEAL MAKERS, SMUGGLERS, ORGANIZERS AND INFORMATION BROKERS",
            "Description": "You realized fast that you weren't ever going to get into a Corporate job. And you didn't think you were tough enough or crazy enough to be a Solo either. But as a small time punk, you knew you had a knack for figuring out what other people wanted, and how to get it for them. For a price, of course. Now your deals have moved past the nickle­ and dime stuff into the big time. Maybe you move illegal weapons over the border. Or steal and resell medicai supplies from the Corporations. Perhaps you're a skill broker acting as an agent for high priced Solos and 'Runners, or even hiring a whole Nomad pack to back a client's contracts. You buy and sell favors like an old style Mafia godfather. You have connections into ali kinds of busi­nesses, deals and politica I groups. You don't do this directly, of course no, you use your contacts and allies as part of a vast web of intrigue and coersion. lf there's a hot night­club in the City, you've bought into it. If there are new military class weapons on the Street, you smuggled 'em in. If there's a Corporate war going down, you're negotiationing be­ tween sides with an eye on the main chance. But you're not entirely in it for the bucks. lf someone needs to get the heat off, you'II hide them. You get people housing when there isn't any, and you bring in food when the neighbor­hoods are blockaded. Maybe you do it because you know they'II owe you later, but you're not sure. You're one part Robin Hood and two parts Al Capone. Back in the 90's, they would have called you a crimelord. But this is the fragmented, nasty, deadly 2020s. Now they call you a Fixer. "
          },
          "Nomad": {
            "Abstract": "ROAD WARRIORS AND GYPSIES WHO ROAM THE HIGHWAYS",
            "Description": "They drove your family off the Farm ten years ago. The Corpo­rations rolled in, took over the land, and put rent a ­cops all over the place. lt wasn't the first time it'd happened; it wouldn't be the last. Gradually, your family fell in with a bunch of other homeless families, and they met another group ... until you'd created a Nomad pack of nearly two hundred mem­bers. Now, crammed into a huge, ragtag fleet of cars, vans, buses and RV's, your Nomad pack roams the freeways. You look for supplies, odd jobs and spare parts in a world where society has fragmented. The pack is your home it has teachers, Med Techs, leaders, and mechanics it's virtually a town on wheels in which everyone is related by mar­riage or kinship. Sometimes the Pack pulls into a town just to fuel up or get grub. Other times, it swings south to follow the harvest; you pick crops in trade for cash or food. Less law abiding Packs are like mobile armies, terrorizing cities and hiring out as muscle in Corporate wars. For obvious reasons, the cops don't like Nomads. But it doesn't mat­ter your vehicles are usually well armored and bristling with stolen weapons; mini guns, rocket launchers and the like. Every kid knows how to use a rifle, and everyone packsa knife. Being homeless in the 2000's isn't easy. The most visible members of the Pack are the Scouts leather armored riders on bikes or in fast muscle cars, who protect the convoy from attacks and hunt up safe campsites. As a Scout, you're on the lookout for trouble, and you usually can find enough of it, with rivai Nomad Packs, the Law, and the Corporates all after you. Like a modem day cowboy, you ride the hard trai I. You've gota gun, a bike and that's all you need. You're a Nomad. "
          }
        },
        "Gettin Cyberpunk": {
          "Character Points": {
            "Description": "Character points are the cash of character creation you use them to \"buy\" the various \"mechanics\" aspects of the character, like good looks, a strong, hard body, unshakable cool and street smarts (but not Skills). We've given you three ways to generate ",
            "Random" : "Roll 9 D10 and total them. You have this many Character Points.",
            "Fast": "Roll l D10 for each stat (9 in all), re­rolling any scores of 2 or less. Place rolls in each stat as desired.",
            "Cinematic": "This option is for Referees only. As the designer of the adventure, the Referee has the option of choosing the number of points for each character based on its position in his or her game.",
            "Points" : {
              "Type": "table",
              "Major Hero": "80pts",
              "Major Supporting Char": "70pts",
              "Minor Hero": "75pts",
              "Minor Supporting Char": "60pts",
              "Average": "50pts"
            }
          },
          "Statistics": {
            "Description": "Each Cyberpunk character has nine Statistics values representing the level of native ability of the character in specific areas of activity. These Stats are rated from two to ten, with two being the worst possible, ten being the best possible, and the aver­age falling at about five or six. Divide your total number of Character Points between each of your nine Stats, adjusting the amounts in each one as you think best describes the character's natural abilities. No Statistic may be less than two or greater than ten.",
            "Intelliegence(INT)": "This is a measure of your problem solving ability; figuring out problems, noticing things, remembering information. Almost every character type will need a high Intelligence, with Netrunners and Corporates requiring the highest of all.",
            "Reflexes(REF)": "This is a combined index, covering not only your basic dexterity, but also how your level of physical coordination will affect feats of driving, piloting, fighting and athletics. Characters who intend to engage in a great deal of combat (such as Solos, Nomads or Rockerboys) should always invest in the highest possible Reflex.",
            "Cool(CL)": "This index measures how well the character stands up to stress, fear, pressure, physical pain and/or torture. In determining your willingness to fight on despite wounds or yourfighting ability under fire, Coo/(CL) is essential. It is also the measure of how \"together\" your character is and how tough he appears to others. Rockerboys and Fixers should always have a high Cool, with Solos and Nomads having the highest of all.",
            "Technical Ability(TECH)": "This is an index of how well you relate to hardware and other technically oriented things. In Cyberpunk, the ability to use and repair technology is of paramount impor tance TECH will be the Stat used when fixing, repairing and attempting to use unfamiliar tech. While all characters should have a decent Tech Stat, potential Techies should always opt for the highest possible score in this area.",
            "Luck(LK)": "This is the intangible \"something\" that throws the balance of events into your favor. Your luck represents how many points you may use each game to influence the outcome of a critical event. To use Luck, you may add any or all of the points of luck a character has to a critical die roll (declaring your intention to use Luck before the roll is made) until all of your Luck stat is used up. Luck is always restored at the end of each game session.",
            "Attractiveness(ATT)": "This is how good looking you are. In Cyberpunk, it's not enough to be good you have to look good while you're doing it (Attitude is Everything). Attractiveness is especially important to Medias and Rockerboys, as being good looking is part of their jobs.",
            "Movement Allowance(MA)": "This is an index of how fast your character can run (important in combat situations). The higher your Movement Allowance (MA), the more distance you can cover in a turn. RUN: To determine how far your character can run in a single combat round (@3.2 seconds) in meters, multiply your MA by 3. The character can run three times this distance in a full 10 second turn. Write this in the RUN section of your Hardcopy Form. LEAP: To determine how far your charac­ter can leap (from a running start), divide your RUN by 4. Write this in the LEAP section of your Hardcopy Form.",
            "Empathy": "This Stat represents how well you relate to other living things a measure of charisma and sympathetic emotions. In a world of alienated, future shocked survivors, the ability to be \"human\" can no longer be taken for granted. Empathy (EM) is critical when leading, convincing, seducing or perceiving emotional undercurrents. Empathy is also a measure of how close he/she is to the line between feeling human being and cold blooded cybermonster. Humanity : This is a measure of the toll cybernetics takes on your ability to relate to other living things. Multiply your EMP by 10 to determine how many humanity points you have. Write the result in the box on your Hardcopy Form. Remember: for every 10 points of Humanity lost, you will auto­matically lose 1 point of EMP. This can have a serious effect on any Empathy­related Skills, as well as forcing you to the edge of cybernetic induced psychosis.",
            "Body Type(BT)": {
              "Description": "Strength, Endurance and Constitution are all based on the character's Body Type. Body Type determines how much damage you can take in wounds, how much you can lift or carry, how far you can throw (pg. 99), how well you recover from shock, and how much additional damage you cause with physical attacks. Body Type is important to all character types, but to Solos, Rockerboys and Nomads most of all.",
              "Body Types & Points": {
                "Type": "table",
                "2 pts"  : "Very Weak ",
                "3-4 pts": "Weak",
                "5-7 pts": "Average ",
                "8-9 pts": "Strong ",
                "10 pts" : "Very Strong "
              },
              "Carry": "You may carry up to 10x your Body Type in kg. You may also dead lift 40 times your Body Type in kg.",
              "Save Number": {
                "Description": "Your character's Save Number is a value equal to your Body Type. To make saves, you must roll a value on 1D10 equal to or lower than this number. There are two types of saves in Cyberpunk: Strength, Endurance and Constitution are all based on the character's Body Type. Body Type determines how much damage you can take in wounds, how much you can lift or carry, how far you can throw (pg. 99), how well you recover from shock, and how much additional damage you cause with physical attacks. Body Type is impor­tant to all character types, but to Solos, Rockerboys and Nomads most of all.",
                "Stun Saves": "When you take damage in Cyberpunk, or have been exposed to knockout drugs, you will be required to make a Stun Save. If you fail a Stun Save, you will automatically be knocked out of combat and be unable to recover until you can make a successful Stun Save in a following combat turn. You may make one Save roll every turn until you succeed. ",
                "Death Saves": "When you have been Mortally Wounded (see Friday Night Firelight, pg. 104), or when you have en­countered cer­tain types of poisons, you will need to make a Save against Death. On a failed roll, you're Body Bank fodder. Take a moment to find the Save box on your Hardcopy Form and fill it in. "
              },
              "Body Type Modifier(BTM)": {
                "Description": "Not all people take damage the same way. For example, it takes a lot more damage to stop Arnold The Terminator than it does Arnold the Nerd. This is reflected by the Body Type Modifier, a special bonus used by your character to reduce the effects of damage. The Body type modifier is sub­tracted from any damage your character takes in combat.",
                "Body Type Modifier": {
                  "Type": "table",
                  "Very Weak": "-0 ",
                  "Weak": "-1 ",
                  "Average": "-2 ",
                  "Strong": "-3 ",
                  "Very Strong": "-4 ",
                  "Superhuman(possible only with cybernetics)": "-5 "
                }
              }
            }
          },
          "Fast and Dirty Expendables" : {
            "Description": "As you'll soon realize, the Cyberpunk char­acter generation system is designed to give you a lot of flexibility. You can tailor the character the way you want it, with lots of personal touches all through the process. But when you need to generate a horde of faceless boostergangers, you're not going to want to invest this kind of time and energy. Instead, you'll need something fast and easy to help you create endless supplies of baddies to be mowed down like chaff by your player characters. The five step FAST CHARACTER SYSTEM below allows you to generate a large sup­ply of faceless guards, killers, corps and bad guys on demand. A quick run through Lifepath can create a fast and dirty back­ground to match your fast and dirty NPCs. So go ahead and waste 'em! We'll make more! Strength, Endurance and Constitution are all based on the character's Body Type. Body Type determines how much damage you can take in wounds, how much you can lift or carry, how far you can throw (pg. 99), how well you recover from shock, and how much additional damage you cause with physical attacks. Body Type is impor­tant to all character types, but to Solos, Rockerboys and Nomads most of all.",
            "Step One: Generate Stats": "Roll 2D6 nine times, writing down each roll. If a roll is 11 or greater, reroll that value. Place each number in one Stat until all Stats are filled.",
            "Step 2: Pick a Role & Skills": {
              "First": "Select a role for the character. Write its Career Skill Package (pg.44)in the appro­priate space, dividing 40 points between these skills.",
              "Second": "If the character is an advanced NPC, roll an additional 2D10 and distribute these points among 5 pickup skills."
            },
            "Step 3: Pick Cyberware (see pgs. 76-79)": {
              "Description": "Roll 1d10. Solos roll 6 times. All others roll 3 times. If duplicate rolls, reroll.",
              "Cyberoptics (Roll 1 D6 for type)": [
                "Infrared", "Lowlight", "Camera", "Dartgun", "Antidazzle", "Targeting Scope"
              ],
              "Cyberarm with gun (Roll 1 D6 for type)": ["Med. Pistol", "Light Pistol", "Med. Pistol", "Light Submachinegun", "Very Heavy Pistol", "Heavy Pistol"],
              "Cyberaudio (Roll 1 D6 for type)": ["Wearman", "Radio Splice", "Phone Link", "Amplified Hearing", "Sound Editing", "Digital Recording Link"],
              "Other": ["Big Knucks", "Rippers", "Vampires", "Slice n'dice", "Reflex Boost(Kerenzinov)", "Reflex Boost(Sandevistan)", "Nothing"]
            },
            "Step 4: Armor & Weapons": {
              "Description": "Roll 1D10, adding modifier below",
              "Armor": [
                "Heavy Leather",
                "Armor Vest",
                "Light Armor Jacket",
                "Light Armor Jacket",
                "Med Armor Jacket",
                "Med Armor Jacket",
                "Heavy Armor Jacket",
                "Heavy Armor Jacket",
                "MetalGear",
                "MetalGear"
              ],
              "Weapon" :  [
                "Knife",
                "Light Pistol",
                "Medium Pistol",
                "Heavy Pistol",
                "Heavy Pistol",
                "Light SMG",
                "Lt. Assault Rifle",
                "Med. Assault Rifle",
                "Heavy Assault Rifle",
                "Heavy Assault Rifle"
              ],
              "More": "Rockers, Corps, Netrunners, Fixers, Techies: add Oto roll.\nNomads, Cops: add +2 to roll. \nSolos: add +3 to roll."
            },
            "Step 5: Write it Down": "Fill out an NPC (Non-player Character) sheet"
          }
        },
        "Tales from the street": {
          "Description": "You got this half-formed person standing there, dripping with slime. You got some stats, maybe an vague idea of where you're going with the character, but nothing else. So how do you take this Blank and make him really Cyberpunk? You start with the Lifepath. Lifepath is a flowchart of \"plot complications\", designed to help you give your Cyberpunk character an authentically dark future background. Its seven sections cover your national and ethnic origins, your family, friends, ene­mies, personal habits and even key events on a yearly basis. It's intended primarily as a guide if you encounter something you don't think fits the character you've envi­sioned, feel free to change the path as you see fit. Use the back of your Hardcopy sheet to record your Lifepath. Remember Cyberpunk hinges on roleplaying, so make use of the information in your Life path run. It's a guaranteed adventure generator! ",
          "Personal Style": {
            "Description": "What do you look like and where do you come from?",
            "Dress & Personal Style": "In Cyberpunk, what you look like is what you are. Fashion is action, and style is everything. Roll 1D10 three times (once per column) to decide what your style is.",
            "Clothes": [
              "Biker leathers",
              "BLue Jeans",
              "Corporate Suits",
              "Jumpsuits",
              "Miniskirt",
              "High Fashion",
              "Cammos",
              "Normal Clothes",
              "Nude",
              "Bag Lady Chic"
            ],
            "Hairstyle": [
              "Mohawk",
              "Long & Ratty",
              "Short & Spiked",
              "Wild & all over",
              "Bald",
              "Striped",
              "Tinted",
              "Neat, short",
              "Short, curly",
              "Long, straight"
            ],
            "Affectations": [
              "Tatoos",
              "Mirrorsnades",
              "Ritual Scars",
              "Spiked Gloves",
              "Nose Rings",
              "Earrings",
              "Long Fingernails",
              "Spike Heeled Boots",
              "Weird Contact Lenses",
              "Fingerless Gloves"
            ]
          },
          "Origin": {
            "Ethnic Origins" : "The Cyberpunk world Is multi-cultural and multlnatlonal. Where you come from determines your native language, customs and allegiances. Choose or roll one nationality, then choose a native tongue from the options listed for the ethnic type. This Is your native lanquage, which you speak at +8. In addition , you also automatically know streetslang, a universal polyglot of English, French, German, Japanese and a half dozen other languages ",
            "Languages": {
              "Anglo-American": "(English)",
              "African": "Bantu\nFante\nKongo\nAshanti\nZulu\nSwahili",
              "Japanese/Korean": "Japanese\nKorean",
              "Central European/Soviet": "Bulgarian\nRussian\nCzech\nPolish\nUkranian\nSlovak",
              "Pacific Islander": "Microneasian\nTagalog\nPolynesian\nMalayan\nSudanese\nIndonesian\nHawaiian",
              "Chinese/Southeast Asian": "Burmese\nCantonese\nMandarin\nThai\nTibetan\nVietnamese",
              "Black American": "English\nBlackfolk",
              "Hispanic American": "Spanish\nEnglish",
              "Central/South America": "Spanish\nPortoguese",
              "European": "French\nGerman\nEnglish\nSpanish\nItalian\nGreek\nDanish\nDutch\nNorwegian\nSwedish\nFinnish"
            }
          },
          "Streetslang": {
            "Type": "table",
            "Al": "Artificial Intelligence a com­puter with full self awareness.",
            "Booster": "any member of a gang that affects cyberwear, leather clothing and random violence.",
            "Combat drugs": "any one of a series of designer drugs created to in­crease speed, stamina and reflexes.",
            "Chilled": "to be cool to be together.",
            "Chippin' In": "To buy cyberwear for the first time. To cast your lot with a group. To connect with a ma­chine.",
            "Chombatta (Choomba)": "Neo-Afro American slang for friend, family member. ",
            "CHOOH ('choo')": "Streetslang for alcohol, as used in vehicle power plants. The vast majority of vehicles in the 2000's are fueled by an advanced form of alcohol with a higher burning temperature than normal methanol.",
            "Chromer": "21 st century heavy metal rock fan. See also Chromatic rocker, Chromatic rock.",
            "Chromatic rock": "a type of heavy metal characterized by heavy elec­tronics, simple rhythms and violent lyrics.",
            "Cybered Up": "to get as much cyber­wear implanted as possible before you go over the Edge. ",
            "Data Term": "a streetcorner inform a-• tion machine, with a screen, Net inputs, and keyboard.",
            "Disk": "record, recording; a laser disk. 'Dorphs:  Streetslang for synthetic endorphins, a designer drug that increases healing powers, limits fatigue, and produces a \"rush\" similar to a second wind. ",
            "Exotic": "a human biosculpted with non-human elements; fur, long ears, fangs, etc. ",
            "The Face": "The Interface. Jacking into the Net. ",
            "Flatline": "to kill. A dead person or thing. ",
            "Go LEO": "to make the trip into Low Earth Orbit; i.e., to visit one of the inner space stations. ",
            "Gyro": "small one or two man heli­copters, used mostly in police work and Corporate strike operations. Handle:  a nickname; a working name you are known by on the Street. ",
            "Hydro": "Streetslang for hydrogen fuel, used to power a sizable number of vehicles in the 2000's. ",
            "Input": "girlfriend. ",
            "Keyboard": "Streetslang for a com­puter interface deck with manual keys. Also a terminal. ",
            "Netrun": "to interface with the Net and use it to hack into Data For­tresses. ",
            "Output": "boyfriend. ",
            "Polymer one shot": "any cheap plastic pistol, usually in the 5 to 6mm range.",
            "Posergang": "any group whose members all affect a specific look, style or bodysculpt job. ",
            "Ripperdoc": "surgeon specializing in implanting illegal cyberwear. ",
            "Ronin": "a freelance assassin or mercenary. Usually considered to be untrustworthy. ",
            "Rockerboy/girl": "a musician or performer who uses his or her art to make political or social statements. Rockerboys are not the same as rockstars, who are usu­ally \"owned\" by recording medi­a corps and are apolitical. ",
            "Samurai": "a corporate assassin or mercenary, hired to protect Cor­poration property or make strikes against other Corporate holdings. ",
            "Slammit On": "to get violent to attack someone without reason. ",
            "The Street": "wherever you live, late 11t night.",
            "The Subculture": "the Underground. ",
            "Stuffit": "to have sex. Also to for­get about something."
          },
          "Family Background": {
            "Description": "Who are you, and where did you come from? Everybody on the Street has a story and a past they're trying to live with. What's yours? ",
            "Family Ranking": [[
              "Corporate Executive ",
              "Corporate Manager ",
              "Corporate Technician ",
              "Nomad Pack ",
              "Pirate Fleet ",
              "Gang Family ",
              "Crime Lord ",
              "Combat Zone Poor ",
              "Urban homeless ",
              "Archology Family"
            ], "Parents"],
            "Parents": [
              ["Both Living", 6, "Family Status"],
              ["Something Happend", 10, "Something Happend to your Parents"]
            ],
            "Family Status": [
              ["Family status in danger, and you risk losing everything (if you haven't already)", 6, "Family Tragedy"],
              ["Family OK. Even if one is missing or died", 10, "Childhood Environment"]
            ],
            "Something Happend to your Parents": [
              [
                "Your parent(s) died in warfare ",
                "Your parent(s) died in an accident ",
                "Your parent(s) were murdered ",
                "Your parent(s) have amnesia and don t remember you ",
                "You never knew your parent(s) ",
                "Your parent(s) are in hiding to protect you ",
                "You were left with relatives for safekeeping ",
                "You grew up on the Street and never had parents ",
                "Your parent(s) gave you up for adoption",
                "Your parent(s) sold you for money"
              ] ,
              "Family Status"
            ],
            "Family Tragedy":[[
              "Family lost everything through betrayal ",
              "Family lost everything through bad management Family exiled or otherwise driven from their original home/nation/corporation ",
              "Family is imprisoned and you alone escaped. Family vanished. You are the only remaining member",
              "Family was murdered /killed and you were the only survivor ",
              "Family is involved in a longterm conspiracy, organization or association, such as a crime family or revolutionary group ",
              "Your family was scattered to the winds due to misfortune ",
              "Your family is cursed with a hereditary feud that has lasted for generations ",
              "You are the inheritor of a family debt; you must honor this debt before moving on with your life"
            ], "Childhood Environment"],
            "Childhood Environment": [
              [
                "Spent on the Street, with no adult supervision",
                "Spent in a safe Corporate Suburbia",
                "In a Nomad Pack moving from town to town",
                "In a decaying, once upscale neighborhood",
                "In a defeaned Corporate Zone in the central city",
                "In the heart of the Combat Zone ",
                "In a small village or town far from the City",
                "In a large arcology city",
                "In an aquatic Pirate park",
                "On a corporate controlled farm or research facility"
              ],
              "Siblings"
            ],
            "Siblings":{
              "Description": "You may have up to 7 brothers/sisters. Roll 1D10. 1-7 is equal to the number of siblings you have. On 8-10, you are an only child. For each brother or sister: ",
              "Male/Female": "Roll 1D10. Even: the sibling is male. Odd: the sibling is female.",
              "Age":[
                "Older","Older","Older","Older","Older",
                "Younger","Younger","Younger","Younger",
                "Twin"
              ],
              "Feelings about you":[
                [
                  "Sibling dislikes you ","Sibling dislikes you ",
                  "Sibling likes you","Sibling likes you",
                  "Sibling neutral ","Sibling neutral ",
                  "They hero worship you", "They hero worship you",
                  "They hate you","They hate you"
                ],
                "Motivations"
              ]
            }
          },
          "Motivations": {
            "Description": "What makes you tick? Will you back up your friends or go for the main chance? What's important to you? ",
            "Personality Traits": [
              "Shy and secretive",
              "Rebellious, antisocial, violent",
              "Arrogant, proud and aloof ",
              "Moody, rash and headstrong",
              "Picky, fussy and nervous",
              "Stable and serious",
              "Silly abd fluffheaded",
              "Sneaky and deceptive",
              "Intellectual and detatched",
              "Friendly and outgoing"
            ],
            "Person you value most": [
              "A parent",
              "Brother or sister",
              "Lover",
              "Friend",
              "Yourself",
              "A pet",
              "Teacher or mentor",
              "Public figure",
              "A personal hero",
              "No one"
            ],
            "What do you value most": [
              "Money",
              "Honor",
              "Your world",
              "Honestly",
              "Knowledge",
              "Vengeance",
              "Love",
              "Power",
              "Having a good time",
              "Friendship"
            ],
            "How do you fell about most people": [
              "Neutral",
              "Neutral",
              "I like almost everyone",
              "I hate almost everyone",
              "People are tools. Use them for your own goals and discrad them",
              "Every person is a valuable individual ",
              "People are obstacles to be destroyed if they cross me ",
              "People are untrustworthy. Don't depend on anyone ",
              "Wipe'em all out and give the place to the cockroackers",
              "People are wonderful"
            ],
            "Your most valued possession": [
              "A Weapon",
              "A Tool",
              "A Piece of clothing",
              "A Potograph",
              "A Book or diary",
              "A Recording",
              "A Musical Instrument",
              "A Piece of Jewelry",
              "A Toy",
              "A Letter"
            ]
          },
          "Life event": {
            "Description": "You know where you came from and what you look like. Now let's take a look at the major events that made you what you are. Roll 2D6 + 16 to determine your character's age, or pick any age 16 or greater. For each year of your character's life past age 16, roll 1D10, check the chart below, and go to that section of the Lifepath. What happens there is the major event that shaped your character's life for that year. When you're done, come on back here and roll the next year's main event. ",
            "Generation": [
              "Big Problems, Big Wins",
              "Big Problems, Big Wins",
              "Big Problems, Big Wins",
              "Friends & Enemies",
              "Friends & Enemies",
              "Friends & Enemies",
              "Romantic Involvement",
              "Romantic Involvement",
              "Nothing Happened That Year",
              "Nothing Happened That Year"
            ],
            "Big Problems, Big Wins": {
              "Description": "Living on the Edge means taking big risks. This year, you took some serious chances. Did it pay off or did you go down in the street? Roll 1D10. On an even roll, you scored big. On an odd roll, you took a hit. ",
              "Disaster Strikes": [[
                "Financial Loss or Debt: Roll 1D10x100. You have lost this much in Eurodollars. If you can't pay this now, you have a debt to pay, in cash-or blood. ",
                "Imprisonment: You have been in prison, or possibly held hostage (your choice). Roll 1D10 for length of imprisonment in months. ",
                "Illness or addiction: You have contracted either an illness or drug habit in this time. Lost 1 pt of REF permanently as a result. ",
                "Betrayal: you have been backstabbed in some manner. Roll another D 10. 1-3, you are being blackmailed. 4-7, a secret was exposed. 8-10, you were betrayed by a close friend in either romance or career (you choose). ",
                "Accident: You were in some kind of terrible accident. Roll 1D10 1-4, you were terribly disfigured and must subtract -5 from your ATT. 5-6, you were hospitalized for 1D10 months that year. 7-8, you have lost 1D10 months of memory of that year. 9-10, you constantly relive nightmares (8 in 10 chance each night) of the accident and wake up screaming. ",
                "Lover, friend or relative killed: You lost someone you really cared about. 1 -5, they died accidentally. 6- 8, they were murdered by unknown parties. 9-10, they were murdered and you know who did it. You just need the proof. ",
                "False Accusation: You were set up. Roll 1D10 1- 3, the accusation is theft. 4-5 it's cowardice. 6-8 it's murder. 9 it's rape. 10, it's lying or betrayal. ",
                "Hunted by the Law: You are hunted by the law for crimes you may or may not have committed (your choice). Roll 1D10. 1-3, only a couple local cops want you 4-6, its the entire local force. 7-8 it·s the State Police or Militia. 9-10, its the FBI or equivalent national police force. ",
                "Hunted by a Corporation: You have angered some corporate honcho. Roll 1D10. 1-3, it's a small, local firm. 4-6, it's a larger carp with offices statewide. 7-8; its a big, national carp w1ith agents in major cities nationwide. 9-10; it·s a huge multinational with armies, ninja and spies everywhere. ",
                "Mental or physical incapacitation: You have experienced some type of mental or physical breakdown. Roll 1D10. 1-3, it's some type of nervous disorder, probably from a bioplague- lose 1 pt. REF. On 4-7, it·s some kind of mental problem; you suffer anxiety attacks and phobias. Lose 1 pt from your CL slat. 8-10, it's a major psychosis. You hear voices, are violent, irrational, depressive. Lose 1 pt from your CL, 1 from REF. "
              ],
                "What you gonna do about it"
              ],
              "What you gonna do about it": [
                "Clear your name ",
                "Clear your name ",
                "Live it down and try to forget it. ",
                "Live it down and try to forget it. ",
                "Hunt down those responsible and make them pay! ",
                "Hunt down those responsible and make them pay! ",
                "Get what's rightfully yours ",
                "Get what's rightfully yours ",
                "Save, if possible, anyone else involved in the situtation. ",
                "Save, if possible, anyone else involved in the situtation. "
              ],
              "You get lucky": [
                "Make a Powerful Connection in City Goverment. Roll 1D10. 1-4, it's in the Police Dept. 5-7, it's in the District Attorney's Office. 8-10, its 1n the Mayor s Office. ",
                "Financial Windfall: Roll 1D10x100 for amount  in eurodollars",
                "Big Score on job or deal! Roll 1D10x100 for amount in eurodollars",
                "Find a Sensei (teacher) Begin at +2 or add+ 1 to a Martial Arts Skill of your choice. ",
                "Find a Teacher: Add+ 1 to any INT based skill, or begin a new INT based skill at +2. ",
                "Powerful Corporate Exec owes you one favor. ",
                "Local Nomad Pack befriends you. You can call upon them for one Favor a month, equivalent to a Family Special Ability of +2. ",
                "Make a Friend on the Police Force. You may use him for inside information at a level of +2 Streetwise on any police related situation. ",
                "Local Boostergang likes you (Who knows why. These are Boosters, right?) You can call upon them for 1 Favor a month, equivalent to a Family Special Ability of +2. But don't push it. ",
                "Find a Combat Teacher. Add+ 1 to any weapon skill with the exception of Martial Arts or Brawling, or begin a new combat skill at +2. "
              ]
            },
            "Friends & enemies": {
              "Description": "Living on the Edge means you don't do things halfway. Your friends are tight, and your enemies ruthless. If you're here, it's because your social life took a major turn (for the worse?) this year. Roll 1D10. On a 1-5, you made a friend. On a 6-10, you made an enemy.",
              "Make an enemy": {
                "Description": "You've gotten In someone's face. Enemies are a way of life In Cyberpunk, so don't skip this step. For each enemy, choose or roll sex on 1D10. EVEN=Male ODD=Female ",
                "Choose": [
                  [
                    "Ex friend ",
                    "Ex Lover",
                    "Relative",
                    "Childhood enemy ",
                    "Person working for you. ",
                    "Person you work for",
                    "Partner or co-worker",
                    "Booster gang member",
                    "Corporate Exec"
                  ],
                  "The cause"
                ]
              }
            },
            "The cause": {
              "Description": "This emnity started when one of you ",
              "Choose": [
                [
                  "Caused the other to lose face or status",
                  "Caused the loss of a lover, friend or relative",
                  "Caused a major humilitiation ",
                  "Accused the other of cowardice or some other personal flaw",
                  "Caused a physical disability: (Roll 1 D6. 1-2= lose eye. 3-4=1ose arm. 5-6=badly scarred)",
                  "Deserted or betrayed the other ",
                  "Turned down other's offer of job or romantic involvement ",
                  "You just didn't like each other ",
                  "Was a romantic rival ",
                  "Foiled a plan of the  other's"
                ],
                "Who's fracked off?"
              ]
            },
            "Who's fracked off?": {
              "Choose": [
                [
                  "They hate you",
                  "They hate you",
                  "They hate you",
                  "They hate you",
                  "You hate them",
                  "You hate them",
                  "You hate them",
                  "The feeling's mutual",
                  "The feeling's mutual",
                  "The feeling's mutual"
                ],
                "Whatcha gonna do about it?"
              ]
            },
            "Whatcha gonna do about it?": {
              "Description": "If the two of you met face to face, the Injured party would most likely",
              "Choose": [
                [
                  "Go into a murderous,  killing rage and rip his face off! ",
                  "Go into a murderous,  killing rage and rip his face off! ",
                  "Avoid the scum",
                  "Avoid the scum",
                  "Backstab him indirectly",
                  "Backstab him indirectly",
                  "Ignore the scum",
                  "Ignore the scum",
                  "Rip into him verbally",
                  "Rip into him verbally"
                ],
                "What can he throw against you?"
              ]
            },
            "What can he throw against you?": {
              "Description": "What kind of forces can your enemy put on the table to stop you?",
              "Choose": [
                "Just himself ",
                "Just himself ",
                "Just himself ",
                "Himself and a few friends ",
                "Himself and a few friends ",
                "An entire gang",
                "An entire gang",
                "A small corporation",
                "A large corporation",
                "An entire government agency"
              ]
            },
            "Make a friend": {
              "Description": "You lucked out and made a new friend (a rare occurence In the Cyberpunk world). For each new friend, choose or roll sex on 1D10: EVEN=Male ODD=Female Choose or roll your relationship to this friend",
              "Choose": [
                "Like a big brother/sister to you ",
                "Like a kid sister/brother to you ",
                "A teacher or mentor ",
                "A partner or co-worker ",
                "An old lover (choose which one) ",
                "An old enemy (choose which one) ",
                "Like a foster parent to you ",
                "A relative ",
                "Reconnect with an old childhood friend ",
                "Met through a common interest "
              ]
            }
          },
          "Romantic life": {
            "Description": "There's more to life than just combat and bad breaks. Romance is also part of living on the Edge. If you're here, you had some romantic action as your major event this year. Start by finding out HOW IT WORKED OUT",
            "How it worked out": {
              "Description": "Roll one, then go to that section",
              "Choose": [
                "Happy love affair (Go back to LIFE EVENTS)",
                "Happy love affair (Go back to LIFE EVENTS)",
                "Happy love affair (Go back to LIFE EVENTS)",
                "Happy love affair (Go back to LIFE EVENTS)",
                "GO TO TRAGIC LOVE AFFAIR",
                "GO TO LOVE AFFAIR WITH PROBLEMS ",
                "GO TO LOVE AFFAIR WITH PROBLEMS ",
                "Fast Affairs and Hot Dates (Go back to LIFE EVENTS)",
                "Fast Affairs and Hot Dates (Go back to LIFE EVENTS)",
                "Fast Affairs and Hot Dates (Go back to LIFE EVENTS)"
              ]
            },
            "TRAGIC LOVE AFFAIR": [
              [
                "Lover died in accident",
                "Lover mysteriously vanished",
                "It didn't work out",
                "A personaL goal or vendetta came between you",
                "Lover kidnapped",
                "Lover went insane",
                "Lover committed suicide",
                "Lover killed in a fight",
                "Rival cut you out of the action",
                "Lover, imprisoned or exiled "
              ],
              "Mutual Feelings"
            ],
            "LOVE AFFAIR WITH PROBLEMS": [
              "Your lover's friends / family hate you ",
              "Your lover's friends/family would use any means to get rid of you",
              "Your friends/family hate your lover ",
              "One of you has a romantic rival ",
              "You are separated in  some way",
              "You fight constantly",
              "You're professional rivals",
              "One of you is insanely jealous ",
              "One of you is \"messing around\"",
              "You have conflicting backgrounds and families "
            ],
            "Mutual feelings": [
              "They still love you ",
              "You still love them ",
              "You still love each other ",
              "You hate them ",
              "They hate you ",
              "You hate each other ",
              "You're friends ",
              "No feeling's either way; it's over ",
              "You like them, they hate you ",
              "They like you, you hate them "
            ]
          }
        },
        "Working":{
          "Skill checks": {
            "Description": "Most of the time, your character will be able to do most ordinary things without difficulty; walk, talk, open a can of Protein Food Complex 35 without gagging. But certain things will require that the charac­ter make a Skill Check to see if he can actually do what he wanted to. ",
            "Re-set difficulties": {
              "Description": "Each task is rated by the Referee from Easy to Nearly Impossible. Each rating has a corresponding numerical value, called a Difficulty. ",
              "Task Difficulties": {
                "Type": "table",
                "Easy": "10+ ",
                "Average": "15+ ",
                "Difficult": "20+ ",
                "Very Difficult": "25+ ",
                "Nearly Impossible": "30+ "
              }
            },
            "Giving It Your Best Shot ": "When making a Skill Check, first, deter­mine which of your stats is the most appro­priate to use to perfom the action. For example, if you were trying to stand on your head, REF would be best. If you were deciphering a code, INT would be the most appropriate. Next, if you have any one Skill directly relating to the task at hand, add that skill to the stat. You may apply only one Skill to a task at any time. The subject of Skills (and how you get them) is covered on pages 42 through 54, but right now, we're just inter­facing you with the concept of tasks. Finally, roll 1D10 and add the combined total of your die roll, your Stat, and your selected Skill. Compare your total with the Task's Difficulty (as determined by the Referee). If your total is equal or higher, you have succeeded; on a lower roll, you have failed. Here's an example: johnny Silverhand needs to break into a locked room, a task the Referee considers to require some training. As such, it has a Difficulty of 15. johnny's most applicable stat is Technical, because this is a Task that requires manipulating a mechani­cal object. Johnny isn't much of a techie (his Tech stat is only +3, enough to fix his guitar strings and plug in his amp). But Johnny also picked up Pick Lock +3 as one of his early Pickup skills. This gives him a Base Ability of 6. Johnny will need to roll at least a 9 to pick this lock.",
            "HOW LONG WILL IT TAKE? ": {
              "Type": "table",
              "Fixing a simple electronic device ": "5 min",
              "Fixing a complex electronic device ": "10 min",
              "Fixing a gun ": "5 min",
              "Fixing a laser, taser or maser ": "10 min",
              "Fixing a tire ": "5-6 min",
              "Fixing an engine": "10-20 min",
              "Rebuilding an engine": "2 days",
              "Looking for a hidden object": "2-5 min",
              "Opening a simple mechanical lock": "1-2 min",
              "Opening a complex mechanical lock": "5-10 min",
              "Opening a simple electronic lock": "3-4 min",
              "Opening a complex electronic lock": "5-10 min",
              "Searching a database": "5-20 min",
              "Designing a cyberdeck": "1-3 days",
              "Putting on a disguise": "3 min"
            },
            "Difficulties modifiers": {
              "Type": "table",
              "Complex repair": "+2",
              "Very complex repair": "+4",
              "It's never been done before": "+6",
              "Don't have the right parts": "+2",
              "Don't have the right tools": "+3",
              "Unfamiliar tools, weapon or vehicle": "+4",
              "Under stress": "+3",
              "Under attack": "+3/+4",
              "Wounded": "+2 to +6",
              "Drunk, drugged or tired": "+4",
              "Hostile environment": "+4",
              "Very hostile environment": "+6",
              "Lack of instruction for task": "+2",
              "All the other characters are \"kibbitzing\" while you're  trying to do the task": "+3",
              "Has never performed this task before": "+1",
              "Difficult Acrobatics involved ": "+3",
              "Very Difficult Acrobatics involved": "+4",
              "Impossible Acrobatics involved": "+4",
              "Information hidden, secret or obscure": "+3",
              "Well-hidden clue, secret door, panel .... ": "+3",
              "Complex program": "+3",
              "Very Complex program": "+5",
              "Complex lock": "+3",
              "Very Complex lock": "+5",
              "target on guard or alerted": "+3",
              "Brightly lit area": "+3",
              "Insufficient light": "+3",
              "Pitch blackness": "+4",
              "Trying to perform secretive task while under observation": "+4"
            },
            "Opposed tasks": "If you are making an attempt against an­other player character, the opposing player will combine his most applicable stat, skill and 1D10 roll. On an equal or higher roll, the defending player wins. ",
            "Difficulty Modifiers ": "Difficulty Modifiers are values which are added to the difficulty of a task, reflecting adverse conditions or extra problems. Modifiers work best when you are dealing with very ticklish or picky situations; things where life and death tasks must be performed. At these times, players will want every ad­vantage they can get, and a simple decision like \"The task is Very Diffi­cult. \" will create more friction than its worth. At these times, you will probably want to make the steps of the task clear by creating a Difficulty through stacking modifiers. In addition, modifiers allow you, as the Referee, to determine the relative difficulty of doing something and the ef­fect of prevailing conditions. ",
            "Automatic Failure, Critical Success ": "On a natural die roll of 1, you have failed Roll an additional 1D10 and check the result on the Fumble Table (pg. 43) to see what (if anything) happens. On a natural roll of 10, you have had a critical success. Roll an additional 1D10 and add it to your original roll. This is when you get lucky and manage to pull off something you have no chance in Hades of doing normally. "
          },
          "Skills": {
            "Description": "Skills are used to enhance your ability to perform cer­tain tasks. They represent things you've specifically taken the time to learn and possibly master, (as op­posed to your stats, which only indicate a basic, natural ability at doing something). For example, if you had very good REF, you would probably pick up driving a car very easily. But you would not know how to drive a car until you had learned the skill of Driving. Each skill is related in some way to one of your basic stats. For example, the skill of Handgun is always related to the character's REF stat. Skills are always rated from Oto 1 0, with 1 being a novice level of knowledge, and 10 being a master's level of ability. Skills are described on pgs.46 to 53, along with all pertinent notes and explanations. In addition, players may opt to invent their own Skills (see Inventing New Skills, pg. 54). ",
            "Fumble table": "img/FumbleTable.png",
            "Starting Skills": "There are two types of starting Skills: Career Skill Packages and Pickup Skills: The Career Skill Package is a group of skills that are known by your character as part of his or her Career. They're basicsRockers know how to play instruments, Solos know how to shoot guns, etc. A starting character receives 40 points to distribute among his 10 Career Skills. He may not use these points on his Pickup Skills, although he can choose to use future Improvement Points (pg 44)to Improve a Career Skill at any later time. He does not have to put points Into all of his Career Skills (but It's a good Idea you never know). Important: It is required that one of your character's Career Skills be the Special Ability for his or her class (pg. 46). These Skills are unique to the class and reflect abilities and resources only that particular class possesses. Examples are the Authority of Cops which allows them to use the weight and powers of the Law or the Charismatic Leadership which allows a Rockerboy to convince a crowd to get down and party - or get out and riot. The number of points you put into your Special Ability (up to, but not greater than 1 0) reflects your position in your chosen field and the development of your unique career skill. Because of this, your Special Ability also determines how much money you have to start with (page 58). Obviously while spreading those Career Points around it's going to be pretty tempting to make yourself a wealthy Superstar, but remember a Rocker with lots of Charismatic Leadership and no performance skills will find that things can get ugly fast. They may love you but they paid 60 eb for those tickets so you'd better be smokin'.",
            "Carrer skills": {
              "Solo" : [
                "Combat Sense ",
                "Awareness/Notice ",
                "Handgun ",
                "Brawling or Martial Arts ",
                "Melee ",
                "Weapons ",
                "Tech ",
                "Rifle ",
                "Athletics ",
                "Submachinegun ",
                "Stealth "
              ],
              "Nomad": [
                "Family ",
                "Awareness/Notice ",
                "Endurance ",
                "Melee ",
                "Rifle ",
                "Drive ",
                "Basic Tech ",
                "Wilderness ",
                "Survival ",
                "Brawling ",
                "Athletics "
              ],
              "Rockerboy": [
                "Charismatic Leadership ",
                "Awareness/Notice ",
                "Perform ",
                "Wardrobe & Style ",
                "Composition ",
                "Brawling ",
                "Play Instrument ",
                "Streetwise ",
                "Persuasion ",
                "Seduction"
              ],
              "Netrunner": [
                "Interface ",
                "Awareness/Notice ",
                "Basic Tech ",
                "Education ",
                "System Knowledge ",
                "CyberTech ",
                "Cyberdeck Design ",
                "Composition ",
                "Electronics ",
                "Programming "
              ],
              "Corporate": [
                "Resources ",
                "Awareness/Notice ",
                "Human Perception ",
                "Education ",
                "Library Search ",
                "Social ",
                "Persuasion ",
                "Stock Market ",
                "Wardrobe & Style",
                "Personal Grooming "
              ],
              "Techie": [
                "Jury Rig ",
                "Awareness/Notice ",
                "Basic Tech ",
                "CyberTech ",
                "Teaching ",
                "Education ",
                "Electronics ",
                "Any three other ",
                "Tech Skills (Gyro, Aero, Weapons, Elect. Security)"
              ],
              "Med Tech": [
                "Medical Tech ",
                "Awareness/Notice ",
                "Basic Tech ",
                "Diagnose ",
                "Education ",
                "Cryotank Operation ",
                "Library Search ",
                "Pharmaceuticals ",
                "Zoology ",
                "Human Perception "
              ],
              "Media": [
                "Credibility ",
                "Awareness/Notice ",
                "Composition ",
                "Education ",
                "Persuasion",
                "Human Perception ",
                "Social ",
                "Streetwise ",
                "Photo & Film Interview "
              ],
              "Cop": [
                "Authority ",
                "Awareness/Notice ",
                "Handgun ",
                "Human Perception",
                "Athletics ",
                "Education ",
                "Brawling ",
                "Melee ",
                "Interrogation ",
                "Streetwise "
              ],
              "Fixer": [
                "Streetdeal ",
                "Awareness/Notice ",
                "Forgery ",
                "Handgun ",
                "Brawling ",
                "Melee ",
                "Pick Lock ",
                "Pick Pocket ",
                "Intimidate ",
                "Persuasion "
              ]
            },
            "Pickup skills": "Pickup Skills are skills the character has learned in the course of knocking around, living his or her I ife. Characters determine their starting points forthese skills by adding their REF and INT Stats. Far example: Johnny's REF is 9 and his INT is 7. johnny has 7 6 points to spend on Pickup Ski/Js. Pickup Skill points may not be used to increase your character's Career Skills! ",
            "Skill descriptions": {
              "Description": "Following are descriptions of all Cy­berpunk Skills. Numbers in parenthe­ses next to skill names are Difficulty Modifiers. To reflect complex and difficult-to-learn skills, the number of improvement points necessary to go up one leve I must be multiplied by the Difficulty Modifier. See pg. 43 for details. ",
              "Special abilities": {
                "Authority (Cops)": "The ability to intimidate or contro! others through your position as a lawman. This attribute represents the Cop's ability to cali on the forces of the Law and Government to get what he wants. Cops can use Authority to question sus­pects, arrest wrongdoers, and defend in­nocents. Backed by the power of Authority, a cop can arrest, detain, confiscate and enter nearly anywhere, as long as he has the pro per arrest or search warrants to back his play. However, authority is only as good as the guy holding the badge-if the cop appears uncertain of his Authority, there's a good chance he'II get nailed by the people he's trying to confront. The higher your Authority, the more able you are to face down criminals, particularly high level mobsters and officials. Authorit is applied to your Cool stat. ",
                "Charismatic Leadership (Rockers)": "This skill allows the Rocker to sway crowds equa I to his level squared times 200. This ability (added to your Cool stat) allows the Rock­erboy to control, incite and charm large number of people through his or her per­formance skills. When under the Rocker's contro!, this group can easily be persuaded to act on his suggestions; for example, a Rocker could convince a concert crowd to riot in the streets or attack a heavilyfortified poi ice line. Charismatic Leadershipwill only work with groups of ten or more people as it is primarily a mob leadership ability. The higher your Charismatic Leadership, the larger a crowd you can control and the more direct and complex the instructions you can get them to follow. For example, a Level +3 Leadership could incite a nightclub crowd to get rowdy. A Level+5or+6 could provoke a concert crowd of thousands to trash a neighborhood, if the area wasn't too far from the hall. At Level +9, and higher, you have the same sort of mesmeric ability as an Adolph Hitler-you can raise armies, start movements, and destroy na­tions. ",
                "Combat Sense (Solos)": "This ability is based on the Solo's constant training and profes­sionalism. Combat Sense allows the Solo to perceive danger, notice traps, and have an almost unearthly ability to avoid harm. Your Combat Sense gives you a bonus on both your Awareness skill and your lnitia­tive equal to your level in the Combat Sense skill. ",
                "Credibility (Medias)": "This is the ability to be believed: by your viewers, by the poi ice, by important and powerful people. This is criticai to getting your story heard and acted upon, as well as convincing people to teli you things, give you information, or get you into where the story is really happen­ing. The higher your Credibility, the more people you can convince, and the easier it is to convince high level authorities of the truth of your information. With a level +3 Credibility, you can convince most people of minor scandals. With a level +5 or +6, you can convince locai officials of military atrocities, undercover dealings and other front page stuff. At level +9, you can successfully expose a scandal of Watergate proportions, or convince the President of the EuroMarket Finance Board that aliens are secretly influencing world leaders. Credibility applies to your INT stat. ",
                "Family (Nomad)": "This is the ability to cali upon the resources and help of any of the members of the Nomad's large, extended tribal family. This can be in the form of weapons, cash, information, or a small army of relatives. The threat of a Nomad family's vengeance may in itself stop harm to the Nomad. The higher your Family ability, the more important you are to the Family and the more help you can cali upon. With a Fami/ystatus of +2, you might be able to get severa I of the Pack to help you wreck a town, for example. With a status of +7 or +8, you are able to make major Pack decisions and lead troops. At + 10, you may be the Leader of your Pack. Family is applied to your lntelligence stat. ",
                "lnterface (Netrunner)": "This skill reflects the Netrunner's ability to manipulate ln­terface programs, and is the Skill used when operating Menu functions such as Locate Remote, Run Software, Control Remote, Downlink , Load, Create and Delete. Other players can enter the Net, but cannot use the Menu. lnterface is based on the INT Stat. Note for Cyberpunk I players- you may elect to swap your originai INT and REF stats for characters generateci with the old rule. ",
                "Jury Rig (Techie)": "This generai repair skill allows the Techie to temporarily repair or alter anything for 1 D6 turns per level of skill. This is not a permanent repair; after the elapsed time, the jury rig will break down. ",
                "Medicai Tech (Medtech)": "This is the skill used to perform major surgery and medi­cai repairs. For more descriptions of this skill in action, see Trauma Team, pg. 116.",
                "Resources (Corporate)": "This represents the Corporate's ability to command cor­poration resources. lt is used as a persua­sion skill, based on the scale of resources requested. This could include bodyguards, weapons, vehicles, buildings, money, etc. Obviously, the more powerful the Corpo­rate, the more he can cali upon at any one time. Your level of Resources determines exactly how much you can request from the Corporation without overreaching yourself. A Resource ability of +2 might get you access to a Company car. An ability of +6 might allow you to use a Company jet or hire a Solo team from the Corporate Security Division. A Resource of +9 would allow you access to almost all levels of the Corporation, as well as the ability to requi­sition almost any Company resource. Your Resource ability is applied to your INT stat.",
                "Streetdeal (Fixer)": "This is the ability to dea! with the undergroun_d information network. With Streetdea/, a Fixer can un­cover rumors and information, locate missing persons or things, put gossip out on the Street, pick up clues and score big deals. Thehigheryour Streetdea/ability, the more information you can gather about things happening around you, the more informants you have, and the more secre­tive the information you can dig up. A leve! +3 Streetdealcan get you contacts for weapons, tools, or minor illegal opera­tions. At leve! +5, you can penetrate the secrets of ali but the most powerful crime families. At leve! +9, you are the equiva­lent of a Mafia crimelord yourself, privy to every secret that's on the Street. Apply Streetdea/ to your Cool stat. "
              },
              "Attractiveness Skills": {
                "Persona! Grooming": "This is the skill of knowing proper grooming, hair styling, etc., to maximize your physical attractive­ness. Use of this skill allows players to increase their Attractiveness, and thus their chances of successful RelatiÒnships or Per­suasions. A basically good looking person would be at +2. A fashion model might have a Persona/ Grooming of +5 or +6. At +8 or better, you could be a major fashion model, film star, or trendsetter. You are always \"together\". And you know it.",
                "Wardrobe & Style": "The skill of knowing the right clothes to wear, when to wear them, and how to look cool even in a spacesuit. With a Wardrobeof +2 or better, you are good at choosing clothes off the rack. At +6, your friends ask you for ward­robe tips, and you never buy anything off the rack. At +8 or better, you are one of those rare people whose persona! style influences major fashion trends. "
              },
              "Body Type Skills ": {
                "Endurance": "This is the ability to withstand pain or hardship, particularly over long periods of time, by knowing the best ways to conserve strength and energy. Endur­ance Skill checks would be made when­ever a character must continue to be ac­tive after a long peri od without food, sleep or water. ",
                "Strength Feat": "he user of this skill has practiced the art of bending bars, crush­ing objects, ripping phone books apart and other useful parlor tricks. At +2 you can crush cans, rip thin books in half, and bend thin rods. At +8, no phonebook is safe, you can bend thin rebar, and snap handcuffs. At + 10, you can bend prison bars, rip up the Gutenberg Bible, and dent car fenders with one blow. ",
                "Swimming": "This skill is required to know how to swim (see Athletics for details). "
              },
              "Cool/Willpower Skills": {
                "lnterrogation": "The skill of drawing information from a subject and forcing his secrets into the open. An lnterrogation of +2 or better will allow you to infallibly find out if your boyfriend is lying to you. At +5, you are a professional level interroga­tor-equivalent to a skilled detective grilling a suspect. Mike Wallace of 60 Minutes has an lnterrogation of +9, allow­ing him to make even the most powerful people squirm.",
                "lntimidate": "The skill of getting people to do what you want by torce of personality or physical coercion. At +3, you can frighten almost any typical citizen, politi­cian or low-level thug. At +6, you can intimidate Sylvester Stallone or any mod­erate \"tough guy\". At +9, you could intimidate Arnold Schwartzenegger. ",
                "Oratory": "The skill of public speaking. At +2, you can wing high school speech contests. At +6, you can be paid to speak in public. At + 10, you are capable of delivering a speech to rivai Kennedy's \"lch Bin Ein Berliner\" or Linculn's Gettysburg Address. Rockers with an Oratory Skill of +6 or better can add + 1 when using their Charismatic Leadership ability.",
                "Resist Torture/Drugs": "Characters with this skill are especially toughened against interrogation, torture and mind contrai drugs. A successful use of this skill will automatically increase the difficulty of any interrogation attempt made by another party by one level. ",
                "Streetwise": "The knowledge ofthe \"seamy\" side of life-where to get illegal and con­traband things, how to talk to the cri minai element, and avoiding bad situations in bad neighborhoods. With a Streetwise of +2 or better, you can get \"hot\" items, score drugs, etc. A Streetwise of +5 would allow you to arrange a murder contract, know a few mobsters who might owe you favors, and be able to cali on muscle when you need it. At +8 or better, you could become a major crimelord yourself and skip the middlemen."
              },
              "Empathy Skills": {
                "Human Perception": "The skill of detecting lies, evasions, moods and other emotional clues from others. At +2, you can usually teli when you're not getting the whole truth. At +6, you can detect subtle eva­sions and mood swings. At +8, you can not only detect subtle emotional clues, but can usually teli what the subject is hiding in a generai way. ",
                "lnterview": "The skill of eliciting interesting annecdotes from an interview subject. This information will be of a more non­specific and persona! nature rather than specific knowledge ( distinguishing this skill from the skill of lnterrogation, where the user is trying to extract exact information. Example: Barbara Walters interviews, Mike Wallace interrogates). At +3 or better, the subject will usually teli you only informa­tion relating to what he/she is well known for. At +6 or better, the subject will teli you anecdotes about the past, pontificate about favorite interests and philosophies, etc. At +9 or better, he/she tells you eve­rything-including persona! information about their illegitimate son, the time they stole a cookie at age 4, and the f11ct that no one ever loved them. ",
                "Leadership": "The skill of leading and con­vincing people to follow you. A leader with a skill of +2 can manage a small office successfully and be respected for it. A leader with a skill of +4 or better can lead a small band of troops into battle and not get backshot. A leader with a skill of +7 or better can lead the enti re Gamelon Empire into battle and look good doing it. James Kirk of Star Trek has a Leadership of + 11, but you never will. ",
                "Seduction": "The skill of forming and main­taining romantic relationships (this in­cludes your abilities as a lover). This skill may be used to determine whether or not players can form relationships with other non-player characters and the intensity of these relationships. In certain cases, Refe­rees may want to average this skill with a player's Attractiveness to get a more real­istic outcome. ",
                "Social": "The ability to deal with sodai situ­ations, like knowing the rightfork to use or when not to teli the joke aboutthe farmer's daughter and the travelling cyberware salesman. A Socia/ Skill of +2 or better will allow you to get by at any fine restaurant or social function. At +5, you can lunch with the President with aplomb. No social situation will faze you, no matter what. At +8 or above, you can lecture Emily Post on what's proper.",
                "Persuasion & Fast Talk": "The ability to talk others into doing what you want. This may be used individually or on large groups. At +3, you can win most debates or convince your girlfriend that the bionde you were with was your sister. At +5, you are a smooth talker of professional caliber. Ronald Reagan hasa Persuasion of +7. Hitler had a Persuasion of +9. ",
                "Perform": "The skill of trained acting, sing­ing, etc. A trained performer of +4 or greater can successfully sing for payment at weddings or small clubs. Performers +6 or greater will be considered to be of professional cali ber, and may have lucrative contracts and fans. Performers of +9 or greater are of \"star\" caliber, have a large number of fans, and may be recognized on the street. "
              },
              "lntelligence Skills": {
                "Accounting": "The ability to ba lance books (or create false books), juggle numbers, create budgets and handle day to day business operations. ",
                "Anthropology": "The knowledge of human cultures, habits and customs. Unlike Streetwise (which covers only the cultures and customs of the Street), or Socia/ (which covers only what you should do in a given situation), Anthropology covers generai customs and background of a culture. For example, with Streetwise, you know what alleys to avoid and what gangs are danger­ous. With Socia/, you know the properforms of address for a high ranking Japanese zaibatsuhead. With Anthropology, you know that the customs of a N'Tanga tribesman require that a young man kill a lion in order to be accepted as an adult male. ",
                "Awareness/Notice": "This is the equivalent of a \"trained observer\" skill, allowing char­acters to notice or be aware of clues, shadowers and other events. With an Awareness of +2 you will usually spot small pieces of paper with notes on them, doors left ajar, and obvious expressions of lying ordislike. An Awareness of +5 or better allows you to spot fairly well hidden clues, notice small changes in expression, and fairly sophisticated attempts to \"shadow\" you. With an Awareness of +8 or greater, you routinely perform the sorts of deductive reasoning seen in the average TV cop show (\"The murderer was left handed because this knife has a specialized handle\"). Sherlock Holmes has a + 10 Awareness. Players without this skill may only use their lntelligence Stat. ",
                "Biology": "General knowledge of animals, plants, and other biologica! systems. At leve! +3, you know most types of common animals, plants. At +6, you have a generai understanding of genetics, cellular biol­ogy, etc. At + 10, you can perform most bio-lab procedures, including gene map­ping and splicing. ",
                "Botany": "The generai knowledge of plants and plant identification. At leve! +3, you know most common plants and can iden­tify which ones are dangerous and why. At a +61 you can identify most important plants found worldwide and have a working knowledge of their uses. At +81 you have the equivalent of a doctorate in Botany and know ali about rare poisons, exotic orchids and other useful plants. ",
                "Chemistry": "The required skill for mixing chemicals and creating various compounds. A leve! +2 Chemistry is equa I to high school chemistry. A level +4 is equa! to a trained pharmacist or college leve! chemist. A +8 is a trained laboratory chemist. ",
                "Composition": "The required skill for writing songs, articles, or stories. A Composing Skill of +4 or greater gives your character the ability to produce salablework. A Skill of +8 or more produces work of such a high caliber that the creator may have a strong literary following and not a little criticai acclaim. ",
                "Diagnose lllness": "The skill of clinically diagnos­ing symptoms and medicai problems. A +3 is the equivalent of a high school nurse-you can recognize most common injuries and com­plaints. At +6, you would be equivalent to a trained intern; you can recognize many uncom­mon illnesses and know · how to treat most common ones. A +9 is the equivalent of a skilled diagnostician; other physicians come to you to get a diagnosis. ",
                "Education & Generai Knowledge": "This skill is the equivalent of a basic public school educa­tion, allowing you to know how to read, write, use basic math, and know enough historyto get by. In effect, it is a \"lare\" or trivia skill. A level of + 1 is a basic grade school education. A skill of +2 is equal to a high school equivalency. A Knowledge Skill of +3 is equal to a college education, +4 or higher is equal to a Masters or Doctorate. At +7, you are an extremely well­educated person, and are asked to play Triviai Pursuit a lot. At +9 and above, you are one of those people who knows a lot about everything (and hopefully has the good sense to keep his mouth shut).",
                "Expert": "You may use this skill to be an expert on one specific subject, such as rare postage stamps, obscure weapons, a foreign language, etc. At +3, you are the locai expert. At +6, you know enough to publish a few books on the subject. At +8 or better, your books are recognized as major texts on the subject, and you could do the talk-show circuit if you wanted to.",
                "Gamble": "The skill of knowing how to make bets, figure odds, and play games of chance success­fully. As any professional gambler knows, this is not a luck skill. At +2, you are the loca I card shark at the Saturday night poker game. At +6, you can make a living at the tables in Vegas and Monte Carlo. At +9 or better, you can take on James Band at roulette and stand a good chance of breaking the bank. ",
                "Geology": "A functional knowledge of rocks, min­erals and geologie structures. At +3, you can identify most common rocks and minerals. At +6, you have the equivalent of a college degree in Geology and can identify minerals and geo­logical structures with ease. At +8, you can teach geology in high school.",
                "Hide/Evade": "The skill of losing pursuers, cover­ing tracks and otherwise evading people on your trail. At +3, you can lose most booster gangers on the rampage. At +6, you can ditch cops and private eyes. At +8, you can ditch most Solos. ",
                "History": "The knowledge of facts and figures of past events. In game play, this might be used to determine if a character is familiar with a par­ticular due related to a past event. At +2, you have the equivalent of a grade school history education. At +6, you would have the equiva­lent of a college grasp on the subject. At +8, you could teach history in high school. At +9, you may have written a few of the most oft­used texts on a particular historical personage or epoch. ",
                "Know Language": "The knowledge of a foreign tongue. At +2, you can \"get by\" with speaking the language. At +3, you can actually read a written form of it. At +6 and above, you are fairly fluent, although no native will be fooled by your ability. At +8 and above, you speak and read the lanquage like a native. Each language known requires a separate Know Lanquage Skill, however, one may use the knowledge of a particular Language with up to 1 /2 (round down) proficiency with any lan­guage in the same linguistic family (example: knowing Cantonese at +4 will give you the ability to understand and speak Mandarin at +2).",
                "Library Search": "The skill of using databases, DataTerms™, libraries and other compiled in­formation sources to find facts. With a skill of +2 you can use most simple databases. With a skill of +6, you can easily access the Library Con­gress. At +9, you can comprehend almost any public database and find very obscure facts. ",
                "Mathematics": "The skill of understanding cal­culations and mathematical formulas. At +3, you have the ability to add, subtract, divide and multiply. At +4, you can do algebra and ge­ometry. At +6, you can perform calculus. At +9 you can deduce your own mathematical for­mulas. ",
                "Physics": "The ability to calculate physical prin­ciples, such as gas pressures, mechanical ener­gies, etc. This skill requires a basic Mathematics Skill of +4. ",
                "Programming": "The required skill to write pro­grams and to re-program computer systems. This skill does not allow players to actually do repairs on a computer(this requires Electronics). With a Programming Skill of + 1, you can do simple EBASIC programs. A Programming Skill of +3 or better allows you to know some higher level languages and be able to write rea­sonably complex programs (including video games). Players with a Programming Skill +6 or better are considered to be professionals, who can build operating software, design mainframe systems, and hold down a steady job at your average Silicon Valley firm. With a Programming Skill of +9 or better, other programmers speak your name with reverence (\"You invented Q? Wow!\"), young hackers set out to crack your systems, and any computer software you design instantly gets used by every business application in the world. ",
                "Shadow/Track": "The skill of shadowing and following people. This skill is primarily used in urban or inhabited areas rather than in wilderness (where the skill of Sur­vival incorporates tracking game in the wilds). ",
                "Stock Market": "The ability to play the stock market, engage in routine stock transactions and manipulate stocks prof­itably. At +2, you know enough to invest in junk bonds and lose your shirt. At +6, your investments pay off 75% of the time. At +9, you are a major heavy on the Market, routinely dabble in international stocks, and can write learned articles on the subject of investment. ",
                "System Knowledge": "Basic knowledge of the geography of the Net, it's lore and history, as well as knowledge of the im­portant computer systems, their strengths and their weaknesses. At +2, you can generally navigate around the Net and know where ali the locai places are. At +6, you know the locations of most places in the Net, and have a working understanding of its largest and most well known systems. At +9, you know the entire Net like the back of your hand, know the generai layouts of the important systems cold, andare aware of the layouts for the rest of them. ",
                "Teaching": "The skill of imparting knowl­edge to someone else (if you don't think this is a skill, you ought to try it sometime). Players may not teach any skill unless they have a higher skill level than the student. The referee is the final arbiter of how long it takes to teach a skill. At a Teaching Skill of +3 or better, you can professionally teach students up to High School. At +6, you know enough to be a college profes­sor (if you wanted ). At +9 or greater, you are recognized by others in the field as good enough to guest lecture at MIT or Cal Tech; your texts on the subject are quoted as the major references, and you might have a TV show on the equivalent of the PBS channel. ",
                "Wilderness Survival": "The required skill for knowing how to survive in the wilds. Knowledge includes how to set traps, forageforwood, track game, bui Id shelters, make fires. The average Boy Scout has a Survival of +3. A Special Forces Green Beret has a Survival of +6 or above. Grizzly Adams, Mountain Man of the Wilderness, would have a +9 or+ 10 Surviva/ Skill. ",
                "Zoology": "Knowledge of lifeforms, biologi­ca I processes and their relation to the environment. At +2, you know most com­mon animals. At +5, you know not only well known animals, but also about many exotics and endangered species. At +8, you are knowledgable on almost all ani­mais, knowtheir habits well, and have a+ 1 advantage to any Wilderness Survival Skills (you know where to find the game). "
              },
              "Reflex Skills ": {
                "Archery": "The skill required to use bows, crossbows and other arrow-based ranged weapons. See Handgun for details. ",
                "Athletics": "This skill is required for accurate throwing, climbing, and balancing. lt combines the basic elements of any high school level sports program. At +3 and above, you are the equivalent of a real high school \"jock\". At +5 and above, you can perform in college level competitions. At +8 and above, you are of Olympic or Professional caliber. ",
                "Brawling": "The skill of fighting man to man with fist, feet and other parts of the body. Brawling is nota trained skill-it is learned on the Street by getting into a lot of fights. Unlike Martial Arts, there are no specialized attacks and no damage bonuses based on level of mastery.",
                "Dance": "The specific skill needed to become a professional dancer. A trained dancer +4 or greater can successfully dance for pay­ment in small clubs or dance troupes. Dancers +6 or greater will be considered to be of professional caliber, and regularly give performances and have fans. Dancers +9 or greater are of \"star\" caliber, have a large number of fans, and may be recog­nized on the street.",
                "Dodge & Escape": "This skill is required to dodge attacks and escape grapples and holds. lf an attack is made without your knowledge, you may not apply this skill to your Defense roll.",
                "Driving": "This skill allows you to pilot ali ground vehicles like cars, trucks, tanks and hovercraft. This skill is not useable for pilot­ing aircraft. A skill of +3 is equal to that of a very good non-professional driver. A skill of +6 allows you to drive with the skill of a moderately skilled race driver. An driver with a skill of +8 or greater will be nationally known as a racer, regularly win champion­ship races, and possibly have access to the most advanced ground vehicles available (as long as he makes an endorsement).",
                "Fencing": "The mastery of swords, rapiers and monoblades. A Fencing Skill of+3 allows you to be competent with a biade. A Skill of +5 makes you fairly skilled. A Fencing Skill of +6 might win you the National Fencing Competitions. A Skill of +8 will get you a reputation for being a true swordsman of duellist caliber. People like D' Artagnan or Miyamoto Musashi have Skills of +1O. They are legendary masters of the biade; the mention of whom will cause all but the stupidest young bravo to run for cover.",
                "Handgun": "You must have this skill to effec­tively use handguns of any type, including cyberwear types. At +2, you can use a handgun effectively on a target range, though combat will stili rattle you. At +5, you are as skilled as most military officers or policemen. At +7, you can do the sort of fancy shooting you see on TV, and have begun to get a reputation of being \"good with a gun\". At +8, you are a recognized gunslinger with a \"rep\". The very sound of your name makes some people back down in fear. At + 10, you are a legendary gunslinger, feared by ali except the stupici young punks who keep trying to \"take\" you in innumerable gunfight challenges. ",
                "Heavy Weapons": "The required skill for using grenade launchers, autocannon, mortars, heavy machine guns, missiles and rocket launchers. A Level +5 skill would be equivalent to a generai military \"Heavy Weapons\" training course, giving the user the ability to use any or ali of these weapon types. ",
                "Martial Arts": "This skill covets any type of trained fighting style using hands, feet, or specialized \"martial arts\" weapons. You must elect a style of martial art and take a separate skill for each style (for example, you would have to take Karate and Judo separately, spending points for each one. Difficulty modifiers are listed in () next to each skill listed below. The primary advantage to martial arts styles is that each one has what are called key attacks; attacks that reflect particular strengths of the style. When a key attack is used, there is a to-hit bonus based on the attack type and martial arts style. A full table of key attacks is listed in Friday Night Firefight, pg. 100. The second advantage to martial arts styles is that there is a damage bonus on attacks equa I to the level of the Martial Arts skill; for example, a master with a+ 10 Kung Fu Skill would add 10 points to his damage. This can be a formidable advantage, particularly in head strikes (which double damage). ",
                "Martial Arts forms": {
                  "Aikido (3)": "This form relies on using the opponent's strength and momentum against him. lt is a perfect form for stopping an opponent peacefullywhile making your­self very hard to hit. Key attacks are: blocks & parries, dodges, throws, holds, escapes, chokes, sweeps, trips & sweeps, grapples.",
                  "Animai Kung Fu (3)": "These areforms based on animai movements, such as crane, mantis, tiger, leopard and dragon forms. These attacks are fast and dangerous, with a style that is exciting and flashy. Key attacks include: strikes, punches, kicks, blocks & parries, sweeps & trips. ",
                  "Boxing (1)": "The manly art of fisticuffs, this form delivers lightning punches and a tight blocking defense. Key attacks are: punches, blocks & parries. ",
                  "Capoeria (3)": "Createci by Carribean slaves, this form combines dancelike movements with fast kicks and low line sweeps. lt is a relatively unknown form and can be com­bined with dance moves to disguise it's true power. Key attacks are: punches, kicks, blocks & parries, dodges, and sweeps & trips. ",
                  "Choi Li Fut (3)": "Descended directly from the ancient Shaolin temples, this form combines powerful roundhouse blows and sweeping kicks into a dynamic fighting style. Key attacks are: strikes, punches, kicks, blocks & parries, dodges, throws, and sweeps & trips. ",
                  "Judo(1)": "This system was designed as a sport form, but is very effective in combat as well. lt uses throws and sweeps to knock down the opponent. Key attacks include: dodges, throws, holds, escapes, sweeps & trips and grappling. ",
                  "Karate (2)": "The Japanese version of kung fu, this style uses straight line movements and powerful blows. Variations include shotokan and kenpo, each with their own special moves. Key attacks are: punches, kicks, and blocks & parries. ",
                  "Tae Kwon Do (3)": "A very fast and precise form, with graceful movements and some aerial kicks. Key attacks include: strikes, punches, kicks, block & parries, dodges.",
                  "Thai Kick Boxing (4)": "One of the deadliest forms in existence, this style is known far blinding kicks delivered with incredible power. Key moves include: strikes, punches, kicks, blocks & parries, and grapples. ",
                  "Wrestling (1)": "This form combines tech­niques of Olympic and Professonal wres­tling. The style uses a wide variety of throws and holds lo incapacitate the opponent. Key attacks include: throws, holds, escapes, chokes, sweeps, trips, and grapples. "
                },
                "Melee": "The ability to use knives, axes, clubs and other hand to hand weapons in combat. Note: when using non-ranged cyberweapons such as rippers, scratchers, si ice n' dices, cyberbeasts, and battlegloves, you must use this skill. ",
                "Motorcycle": "The required skill to operate motorcycles, cyberbikes and other two and three-wheeled vehicles. ",
                "Operate Heavy Machinery": "The required skill to operate tractors, tanks, very large trucks and construction equipment. ",
                "Piloting": "In generai, this is the skill of controlling aircraft. Aircraft are broken into categories: Gyro and Rotorcraft, fixed Wing Aircraft, Dirigibles and Vectored Thrust Aerodynes (AV-s). A Piloting Skill of + 1 allows you to take off and lanci safely in good weather conditions. A Piloting Skill of +3 or more makes you a trained pilot, able to engage in most combat situations or bad weather. Pilots with a Skill of +6 or greater are veteran pilots, able to handle themselves in almost any situation, including aerobatic manuevers. Pilots with a Skili of +9 or greater are so good, they have a rep as pilots, and are widely known among the piloting fraternity far having the \"right stuff\". ",
                "Piloting forms": {
                  "Pilot Gyro (3)": "The ability to pilot ali types of rotorwing aircraft, including gyros, copters and Ospreys. ",
                  "Pilot Fixed Wing(2)": "The ability to pilot fixed wing jets and light aircraft. Ospreys may be flown with this skill, but only in the straight ahead (non-hover) mode. ",
                  "Pilot Dirigible (2)": "The ability to pilot all lighter than air vehicles, including cargo dirigibles, blimps and powered balloons. ",
                  "Pilot Vectored Thrust Vehicle (3)": "The skill of piloting ali types of vectored thrust vehicles, including hovercars, hover rafts and AV-4, 6 and 7 vehicles. "
                },
                "Rifle": "You must have this skili to use rifles/shotguns effectively (see Handguns far limitations and modifiers). ",
                "Stealth (2)": "The skili of hiding in shadows, moving silently, evading guards, etc. A Stea/th Skili of + 1 is about the level of a very sneaky 10 year old steal­ing cookies. At +3, you are able to get past most guards, or your parents if you've been grounded. At +6, you are good enough to slip smoothly from shadow to shadow and not make any noise. At +8, you are the equa I of most Ninja warriors. At + 10, you move as silently as a shadow, making the Ninja sound like elephants. ",
                "Submachinegun": "You must have this skill to use any type of submachine gun effectively (see Handguns far limitations and modifiers). "
              },
              "Technical Skills ": {
                "Aero Tech (2)": "The required skili far repairing fixed wing aircraft, including Ospreys, jets, and light aircraft. With a Skill of +3, you can perform most routine maintenance tasks. With a Skili of +6, you can do engine teardowns and major structural repairs. With a Skili of +9 or better, you are capable of designing and building your own aircraft.",
                "AV Tech (3)": "The required skili far repairing ali ducted fan aerodyne vehicles. At +3, you can perform routine maintenance. At +6, you can tear down engines and modify an AV. At +IO, you can design your own AVs on common airframes. ",
                "Basic Tech (2)": "The required skilis far building or repairing simple mechanical and electrical devices, such as car engines, television sets, etc. With a Basic Tech Skili of +3 or better, you can fix minor car problems, repair basic wiring, etc. A Basic Tech Skili of +6 or better can repair stereos and TVs, rebuild an engine, etc. A Basic Tech Skili of +9 or better can build a simple computer from scratch, put together a race car engine, and maintain any kind of industriai machinery. However, they do not know enough specialized knowledge to apply it to compi ex things such as aircraft (just like Mr. Goodwrench doesn't know how to build and service an F-16). ",
                "Cryotank Operation": "The required skili far operating, repairing and maintaining life suspension and body chiliing devices. A minimum skill of +4 is required to chili down a healthy person. A minumum skill of +6 far chilling a wounded person. ",
                "Cyberdeck Design (2)": "The required skili far designing cyberdecks. At level +4, you can modify an existing cyber­deck far greater speed or memory. At level +6, you can design a deck equal to most existing designs. At +8, you can design decks that are substantialiy improved aver existing designs. ",
                "CyberTech (2)": "The required skili far repairing and maintaining cyberwear. At level +2, you can keep your cyberwear tuned up and can replace its power batteries. At level +6, you can strip down most cyberwear and even make simple modifications. At level +8, you can design your own cyberwear to arder. ",
                "Demolitions(2)": "This skili allows the character to be knowledgeable in the use of explosives, as weli as knowing the best explosives to use far which jobs, how to set timers and detonators, and how much explosive to use to accomplish a desired result. ",
                "Disguise": "The skili of disguising your character to resemble someone else, whether real or fictitious. This skill incorporates elements of both makeup and acting, although it is not the same as the ability to actualiy be an actor. ",
                "Electronics": "The required skill for maintaining, repairing and modifying electronic instruments such as computers, persona! electronics hard­ware, electronic security systems, cameras and monitors. ",
                "Electronic Security (2)": "The skill of installing or countering electronic eyes, electronic locks, bugs and tracers, security cameras, pressure plates, etc. At level +3, you can jimmy or install most apartment locks and security cams. At +6, you can override most corporate office locks and traps. At +9, you can enter most high security areas with impunity. ",
                "First Aid": "This skill allows the user to bind wounds, stop bleeding, and revive a stunned patient (see Trauma Team, pg. 116 for details).",
                "Forgery": "The skill of copying and creating false documents and identifications. This skill may also be applied to the detection of same; if you can fake it, you can usually teli a fake as well. ",
                "Gyro Tech (3)": "The skill of repairing and main­taining rotorwing aircraft such as helicopters and gyrocopters. ",
                "Paint or Draw": "The skill of producing profes­sional drawings. A Skill of +3 allows you to produce salable \"modem\" art. A Skill of +6 will produce artwork that is recognizable and ex­tremely pleasant to the eye-as well as salable. An artist with a Skill of +8 or greater will be nationally known, have exhibits in galleries, and have other lesser artists studying his style in art school. ",
                "Photography & Film": "The skill of producing professional-caliber photographs or motion pictures. A Skill of +2 allows you to make decent home movies. A Skill of +4 or better creates work capable of winning amateur contests. A Skill of +6 or better will produce work of the leve I of the average Playboy cover or rock video. A photographer or cinematographer with a Skill of +8 or better will be nationally known and probably famous. ",
                "Pharmaceuticals (2)": "The skill of designing and manufacturing drugs and medicines. A mini­mum Chemistry skill of +4 is required. At +4, you can make asprin. At +6, you can make hallucinogenics or antibiotics. At level +9 you can build designer drugs tailored to individuai body chemistries. ",
                "Pick Lock": "The skill required to pick locks and break into sealed containers and rooms. At +3, you can jimmy most simple locks. At +6 you can crack most safes. At +9 or better, you have a rep as a master cracksman, and are known to all the major players in the Cyberpunk world. ",
                "Pick Pocket": "The required skill for picking pock­ets without being noticed, as well as \"shoplift­ing\" small items. For ideas on levels of ability, see Pick Lock, above. ",
                "Play lnstrument": "The skill of knowing how to play a musical instrument. You must take this skill separately for each type of instrument played. A Skill of +4 or higher will qualify your character to play professional \"gigs\". A Skill of +8 and above will gain the musician some professional acclaim, possibly with recording contracts and command performances. At + 10, you are widely acclaimed, have lots of Gram­mys, and regularly jam with Kerry Eurodyne.",
                "Weaponsmith (2)": "The required skill for repair­ing and maintaining weapons of all types. At level +2, you can do repairs and field stripping. At level +6, you can repair all types of weapons and make simple modifications. At level +8, you can design your own weapons to order. "
              },
              "Learning New Skills and lmproving Old Ones ": "Players can improve their skills or begin new ones by accumulating lmprovement Points (IP) . As you gain more IP, you'II record these points in the area next to the skills listing on your Hardcopy Form. When you have collected enough lmprovement Points in a skill, the skill's level increases by one. The first leve I of a skill will always cost 10 IP. To determine how many points are re­quired to raise a skill higher than this, multiply the current leve I of skill by 10. This is how many points are required to raise a simple (IP multiplier= 1) skill to the next leve 1. Example: My Brawling skill is +4. To move from +4 to +5 will require 40 IP. To move from +5 to +6 will require 50 IP. ",
              "IP Multipliers ": "Not a li skills are equally easy to learn. These skills have an additional IP multiplierwhich multiplies the number of points required to learn the next level of skill. This extra cost will be noted in the skill descriptions. Exomple: Choi Li Fut hos o multiplier of 3. To roise my Choi Li Fut ski/1 from +4 to +5 wou/d require 7 20 IP, not 40. ",
              "Getting More IP ": {
                "Description": "There are three ways to accumulate lm­provement Points: Study & Proctice, Being Tought, and Direct Experience. In ali three cases, the amount of improvement is de­termined by the Referee of your game. ",
                "Study & Practice": "In its simplest form, you get a how-to book and begin practicing. Study is pretty tough-you have no idea of where to begin, and no one to correct your mistakes. The biggest limit to this type of learning is that you can only improve your skill from a level of +O to a level of +2. In generai, it takes about 1 day of book learn­ing to gain 1 IP. ",
                "Being Taught": "Finding a teacher is far superior to self-teaching or book learning. The teacher must have a higher level of skill than the student, and must have the time to teach you (how long this takes, of course, is determined by the Referee). But even the most knowledgeable of teachers may not be able to transfer that knowledge. That's where the skill of Teaching comes into play. The teacher must average his skill in the subject to be taught with his teach­ing skill. He may then teach the student up to that leve I of skill. How long this takes is, of course, up to the Referee, who awards IP over the passage of time (usually 1-5 IP per lesson). ",
                "Experience": "Stil I the best teacher. When­ever you do something well, the Referee rewards you with lmprovement Points right on the spot. The problem is that these points will be applied to the skill you were using when you got the reward. Therefore, if you want to get better in a particular skill, it's important to use that skill every chance you get. Referees should use an even hand when rewarding lmprovement Points, not only rewarding players for doing things well, but also for demonstrating both role-playing ability and teamwork. In generai, we suggest not awarding more than six points per skill per game session. ",
                "IP AWARD CUIDELINE TABLE": [
                  "Used Skills in this area often , even if not effectively. ",
                  "Used Skills effectively. ",
                  "Frequent and effective use of Skill. ",
                  "Did something out of the ordi­nary with this Skill. ",
                  "Very clever or effective use of this Skill. ",
                  "Extremely clever or effective use of Skill. ",
                  "Skill was criticai to player in this adventure session. ",
                  "Skill use was criticai to entire group this adventure session. ",
                  "Did something really incredible with this Skill. "
                ]
              },
              "Inventing New Skills ": "You can also invent new skills to cover new needs, should you want to do so. To do so, you must first convince the Referee of your game to let you have that skill. You and the Referee should work together to deter­mine: \n1) Exactly what does this skill allow you to do \n2) How (according to your character con­ception) did you acquire this skill? \n3) What are the specific limits of this skill (what can't I do with it?). \n4) What stat is this skill connected to and why? \nReferees should be careful to make sure that player skills are neither too specific (\"Shoot .45 Caliber Handgun With Laser Sight\"), or too generai (\"Shoot Anything Well\"). You should insist on a middle ground which covers a generai ability to use the skill, yet does not give the player an unreasonable advantage in ali possible situations (\"Shoot Handguns\"). The Referee is always the final arbiter of decisions on skills. ",
              "Another Kind of Experience: Reputation": "Reputation is a measure of things your character may do so well (or badly) that he has actually become well known for them. A reputation for something is always established by a character's actions, and is then awarded by the Referee. Whenever a character encounters new people in new situations , his reputation may actually influence how they react to him. Some­times this can be very good. Other times, it can be very bad: Example: Jake the Hammer is known far and wide as a streetfighter; he is feared through­out Night City for his trademark killer punch. Over time, the Referee has awarded Jake a Reputation of 6 points. Anyone who meets Jake far the first time must roll higher than 6 on 7 O 7 O in arder to have not heard of Jake's nome. On this particular night, Jake swa9-9ers into the Totentanz and orders a drink. Down the bar, Ripperjack hears the bar­tenderaddress Jake by nome. Ripperjack puts two and two together (a 3 on 7 O 7 O). This \"jake\" must be the sonovagun who caught The jack's kid brother in on a/ley and beat him to death with his metalshod fists. Ripper­jack 's eyes flore, and his teeth 9rind down. He pulls out his Minami 7 O and blows a hole through Jake's back. Reputation can also be a disadvantage. Whenever you do something extremely uncool (show cowardice, desert or betray someone, etc.), the Referee can stili award you Reputation Points for these actions. The more points you score, the more likely people are to have heard about your infamous deeds (once again, roll 1d10). However, this time they won't be im­pressed. lf your rep is for cowardice, it can even work against you. Reputation in Cyberpunk has one other big effect- facedowns. Remember; a lot of combat in this genre comes down to a duel of wills; who's tougher, meaner, and looks more ready to prove it. This often leads to what are called facedowns; when two heavies on the Street square off just before a fight, or to see who'II back down from a confrontation. When making a facedown, both partici­pants will roll: 1D10+COOL+ REPUTATION Note: lf one of the opponents has a repu­tation for cowardice, his value will be treated as a negative number. In a facedown, the laser has the option of backing down or making any subsequent attacks against this particular opponent at a -3 (due to fear) until he has success­fully defeated that opponent once. On a tied roll, both parties are unsure and no penalties will apply. Example: The lronmaster is a feared boos­tergonger known throughout Night City. In the middle of the Slammer, he runs across on attractive young woman and her male com­panion. The lronmaster soys \"Take a clue and vanish, Kid-trash; the input's with me now.\" The Kid stands up and says, \"Vanish yourself, burnbroin.\" A faceoff begins. The lronmaster is known al/ aver the City, 9ivin9 him a Rep of 6. What he doesn 't know is that the Kid is a 5th Don black belt in Kenpo Karate. Although he's new in the Zone and hasn 't much of a Rep ( 3 ), he is totally self­posessed and aware of his skills (COOL= 7 O). The lronmaster may be tough, but he's mostly a bully. His COOL is only 4, bo/stered by a Reputation made on a few lucky fights. His tota/ roll is 4+4+(roll of 6)= 7 4. The Kid's tota/ is 3+ 7 O+(ro/1 of 3 )= 7 6. The lronmoster feels a stronge unease as he stares at the calm, ready­to-rock Kid. His eyes shift away and he backs down with a grunt. ",
              "REPUTATION TABLE: Who Knows About You ": [
                "Anyone who was there at the time knows. ",
                "Stories have gotten around to immediate friends. ",
                "Ali your co-workers and casual acquaintances know. ",
                "Stories are all over the local area. ",
                "Your name is recognized by others beyond your local area. ",
                "You are known on sight by others beyond your local area. ",
                "A news story or two has been written about your exploits. ",
                "Your exploits regularly make the headlines and screamsheets. ",
                "Your exploits always make the screamsheets and TV. ",
                "You're known worldwide. "
              ]
            }
          }
        },
        "Putting the cyber into the punk": {
          "The outfit": {
            "Description": "The Cyberpunk future is mobile. Like the cowboys of the Old West, most people carry their lives on their backs-miniatur­ized sleeping, eating and entertainment components crammed into carryalls and the back seats of cars. The stuff you carry around is known in str.eetslang as your outfit. A typical outfit might include: lnflatable bed (folds to a 6\"x6\" package for easy storage).,Compressable down sleep-bag (wads to the size of a paperback book).,Micro-stereo com po (a microsized boom box with stereo speakers or headphones, possibly CD, chip/tape player, TV and certainly radio).,Handful of tapes or datachips.,Laptop or pocket computer (for notes, writing, business, links to computer net­works).,Cybermodem, cables (for Netrunners).,Pocket Cellular phone (the phone isbought, the service is rented by themonth).,Handgun, knife or both. Possibly an as­sault rifle or SMG, and a couple backups as well. Always extra ammo.,Body armor (usually an armor jacket or bullet-proof T-shirt).,Persona I things, like clothes, toothbrushes, etc. Most of this is crammed into a shoulderbag or duffle sack. Most Cyberpunk characters aren't much for settling down. Rockerboys always have the next gig. Solos have to keep moving-the next job requires it, and you keep moving anyway before your enemies figure out where you're sleeping these days. Cops, Netrunners, Medias and Techies are always on the move-on stake­outs, hard stories, or running from the various people you've brought down on yourself with your netrun­ning. Nomads­well, they don't have homes to start with, and what good is it if you can't cram it on the back of your bike any­ way? Even a Corporale may find himself living out of a \"coffin\" in the Tokyo airport if times get rough. The point is, a computer society makes it easy for people to live like campers all the time. Why should you have to go home to listen to your favorite music when you can carry your CD player with you? Missing phone calls and hate answering machines? You carry your phone with you and plug into the cellular network; making your business calls on the run from your favorite restaurant or while driving your car. Why bother with cooking when you can grab something quick from a hundred fast faod stores?Why keep clothes when you can use them till they wear out, then buy new ones? You'II rent a sleeping cube far the night, put up your persona! stuff, and blow out in the morning. Remember: THE FUTURE IS DISPOSABLE The key to any Cyberpunk game is thinking Cyberpunk. Think rootless and mobile. You don't know where you're sleeping tonight, and you don't care. You've got a bed in your bag, some tunes in your pocket, some cash far faod. And a gun to make sure no one takes anything away from you. ",
            "Starting Funds": "So how much do you start with? Well, that depends on your job. A job? Yeah, even in the Dark Future, ya gotta pay the bills, chombatta. And you want a job, because it's a real short slip between being able to eat Realpack andfresh veggies, and being reduced to eating kibble and living in a filthy flop-cube. How good a job you currently have is based on the level of your Special Abil­ity. Far example, a Rocker with a Charismatic Leader-ship of 2 isn't gonna draw crowds like Kerry Eurodyne (a hot megarocker). This means he'II be reduced to playing gigs wherever he can get them; sleazoid dives, bar-mitz­vahs, weddings, bar fights; you name it. Take a quick jump to the Occupation Table on page 58. Find your Role (or the role closest to it), cross reference it to your current Special Ability level, and that'II give you a monthly salary. Multiplythis amount by a 1 D6/3 to determine the number of months you've currently been employed, and that gives you the total amount of cash your character starts with. Exactly how you earn your euro is up to you; the categories are deliberately vague to give you plenty of roleplaying room. Maybe as \"Level 7\" Solo, you don't want to work for a Corporation; no problem. lt's only a generai description of where you fit on the Solo hierarchy. For ali we know, you work on an extraction team for Amnesty lnternational. One last thing. Roll one more D6. lf you roll higher than a four, you just got unem­ployed. Congratulations. Betcha can taste that kibble already. ",
            "Encumbrance": {
              "Description": "In most cases, encumbrance isn't a big problem for a Cyberpunk character-he's going to keep the majority of hisgearin hisapartmentorhiscar. ACyberpunk charactercan carry around as much in kilograms as the number of points invested in his &xiy T ype stat , multiplied by 1 O. He can deadlift 40 times his Body Type stat. Example: I have spent 6 points to get an Average Body Type. I can carry up to 60 kilograms; roughly 1 32 lbs. I can dead/ift 240 kg-about 528 lbs. Rather than list exact weights of everyth ing you could possibly want to carry, we have arranged a simpler system of classification. The following weight groups are more useful to the Referee who must make a generai determination of how much a player can carry. ",
              "Weights": {
                "Type": "table",
                "0.5 kilos or less ": "1 box of ammo • cellular phone • persona I stereo• pocket computer • cybermodem • interface cables • pocket TV• Digitai cam­era • Small recorder • flashlight • binocu­lars • Swiss Army knife • article of clothing fighting knife • switchblade • mirror­shades • Light pistol • nylon carrybag • Kevlar helmet.",
                "1 Kilo or less ": "Medium to Heavy handgun • sleeping bag radio/chip player •video camera • toolkit medical kit • laptop computer • armar vest/T-shirt.",
                "3 Kilos ": "Submachine gun • Very Heavy Pistol • electric guitar • drum synthesizer • inflatable bed • Light to Medium assault rifle • Shotgun • Armor jacket• Kevlar flack pants or vest. ",
                "4 Kilos ": "Electric keyboard • amplifier • Heavy assault rifle. "
              }
            }
          },
          "Weapons": {
            "Description": "The first thing your cyberpunk is gonna want is some weapons (weapons can get you out of a bad situation a lot faster than a great stereo). Cyberpunk weapons break into seven types: ",
            "Types": {
              "Type": "table",
              "Pistols (P)": "Any type of single shot (or semiautomatic) weapon which may be accurately fired with one hand. ",
              "Submachineguns (SMG)": "Any type of weapon which may fire either automatically or semi automatically, using only pistol ammuni­tion. ",
              "Shotguns (SHG)": "Any weapon which fires pellets or other small particles instead of a solid slug. ",
              "Rifles (RIF)": "Include assault rifles, carbines, and fully automatic rifles. These weapons always fire rifle type ammunition. ",
              "Heavy Weapons (HVY)": "Include missiles, grenades, heavy cannon, etc. ",
              "Melee Weapons (MELEE)": "Include swords, daggers, knives, martial arts weapons, polearms, etc. ",
              "Exotic Weapons (EX)": "These are bows, lasers, flechette pistols, airguns and microwave weapons the real \"sci-ti\" weapons of the Cyberpunk universe. "
            },
            "Weapon codes": {
              "Description": "Each weapon is represented by certain characteristics, such as its type, damage, range, accuracy, concealability, availability and cost. These factors are recorded as a weapon code - a profile of the weapon in arder of: Name • Type • Accuracy • Concealability Availability • Damage/ Ammunition • Number of Shots • Rate of Fire • Reliability ",
              "Accuracy": "This is how good the weapon really is. Weapons are rated from -3 to +3 on accuracy, with O being an average level of accuracy. ",
              "Concealability": "How easily they can be hidden until needed (an important factor in combat weapons). A smart combat gun­ner doesn't want to walk into a bar with a shotgun protruding from underneath his coat it's going to cause trouble. He also needs to be able to carry \"holdouts\" in the event of capture or disarmament. \nPocket, Pants Leg or Sleeve (P) \nJacket, Coat or Shoulder Rig  (I)\nLong Coat  (L)\nCan't be Hidden  (N)",
              "Availability": "This is how difficult the weapon is to find on the open market. \nExcellent  (E) \nCan be found almost anywhere \nCommon  (C) \nCan be found in most sports &. gun stores or on the Street\nPoor  (P) \nSpecialty weapons, black market, stolen military\nRare  (R) \nStolen, one of a kind, special military issue, may be highly illegal.",
              "Damage/ Ammunition": "Each weapon is rated as to the type of ammunition it carries, and the damage of that ammuni­tion (in numbers of dice thrown). ",
              "Number of Shots": "This is how many shots are held in the standard clip, magazine or quiver tor the weapon type. ",
              "Rate of Fire": "This is how many shots the weapon can fire in a single combat round (3.2 seconds). ",
              "Reliability": "This is how reliable the weapon is in combat-its chance of jamming while on autofire, etc. \nVery Reliable  (VR)\nStandard  (ST)\nUnreliable  (UR) "
            },
            "Weapon List": {
              "Light Autopistols": {
                "BudgetArms C-13": ["weapon","P", -1, "P", "E", "1 D6(5mm)", 8, 2, "ST", "50m", 75, "A light duty autopistol used as a hold­out and \"lady's gun\". "
                ]
              },
              "Medium Autopistols": {
                "Militech Arms Avenger": ["weapon","P", 0, "J", "E", "2D6+1(9mm)", 10, 2, "VR", "50m", 250, "Awell-made autopistol with good range and accuracy. A professional's gun. "
                ]
              },
              "Heavy Autopistols": {
                "BudgetArms Auto 3": ["weapon","P", -1, "J", "E", "3D6(11 mm) ", 8, 2, "UR", "50m", 350, "lt's cheap. lt's powerful. lt blows up sometimes. What else do you want? "
                ]
              },
              "Very Heavy Autopistols": {
                "Armalite 44": ["weapon","P", 0, "J", "E", "4D6+1(12mm)", 8, 1, "ST", "50m", 450, "Designed as an alternate to the 1998 U.S. Army sidearm trials. A solid con­tender. "
                ]
              },
              "Light Submachineguns": {
                "Uzi Miniauto 9": ["weapon","SMG", 1, "J", "E", "2D6+ 1 (9mm) ", 30, 35, "VR", "150m", 475, "Uzi's entry into the 21 st century, all plastic, with a rotary electric clip and adjustable trigger. The choice for many security Solos. "
                ]
              },
              "Medium Submachinegun": {
                "Arasaka Minami 10": ["weapon","SMG", 0, "J", "E", "2D6+ 3 (10mm)", 40, 20, "VR", "200m", 500, "The standard Arasaka Security weapon,, foundworldwide.Agood, all roundweapon. "
                ]
              },
              "Heavy Submachinegun": {
                "Sternmeyer SMG 21 ": ["weapon","SMG", -1, "L", "E", "3D6(11 mm)", 30, 15, "VR", "200m", 500, "Sternmeyer's best entry in the anti­terrorist category, with wide use on C­SWAT teams and PsychoSquads. "
                ]
              },
              "Assualt Rifle": {
                "Militech Ronin Light Assault": ["weapon","RIF", 1, "N", "C", "5D6(5.56)", 35, 30, "VR", "400m", 450, "A light, all purpose update, similar to the M-l 6B. "
                ]
              },
              "Shoutguns": {
                "Arasaka Rapid Assault 12": ["weapon","SHT", -1, "N", "C", "4D6(00)", 20, 10, "ST", "50m", 900, "A high powered auto-shotgun with lethal firepower. Used by Arasaka worldwide. Another good reason to avoid the Boys in Black. "
                ]
              },
              "Heavy Weapons": {
                "Barrett-Arasaka Light 20mm": ["weapon","HVY", 0, "N", "R", "4D10AP(20/9mm)", 10, 1, "VR", "450m", 2000, "The cyberpsycho hunter's favorite. Almost 2 meters long, this \"cannon\" fires a depleted uranium shell at supersonic speeds. Heavy AP sub-caliber penetrator damages armar 2pts/hit. "
                ]
              },
              "Exotics": {
                "Techtronica 15 Microwaver": ["weapon","P", 0, "J", "P", "1D6", 10, 2, "VR", "20m", 400, "Flashlight sized microwave projector. See FNFF, pg. 108 for details. "
                ]
              },
              "Melee Weapons": {
                "Kendachi Monoknife": ["weapon","Melee", 1, "P", "P", "2D6", "-", "-", "VR", "1m", 200, "Mono-sectional crystal biade. lncredi­bly sharp. In the Japanese \"tanto\" style. Also available in a naginata form for 100  extra. "
                ]
              },
              "Old Guns Never Die": {
                "S&W Combat Magnum ": ["weapon","P", 1, "J", "C", "2D6+3(.357)", 6, 2, "VR", "-", "-", "Designed for US Border Patrol use, the Combat Magnum is a popular choice among police officers. lts \"small frame\" and reliable action make it a best seller. "
                ],
                "Llama Commanche ": ["weapon","P", 0, "J", "C", "4D6(.44)", 6, 1, "ST", "-", "-", "An excellent .44 revolver, used in home defense and police work. lt's long barre! makes it hard to conceal. "
                ],
                "Colt .45 \"Peacemaker\"": ["weapon","P", 0, "J", "R", "2D6+2(.45)", 6, 1,"VR", "-", "-", "The gun \"that won the West\", the .45 was the most common US sidearm throughout the 1800's. A single action weapon, it must be cocked before firing, although later models had a ffattened hammer allowing the gun to be fired by \"fanning\" the hammer."
                ]
              }
            },
            "Reloads and options": {
              "Description": "Armor piercing=3x cast Brass Cased loads for old guns=2*cost *Drugs, Acid =5* cost",
              "Ammo(Type(quantity): cost)": {
                "Type": "table",
                "Light Pistol, Lt. SMG (box of 100)": "15",
                "Medium Autopistol, SMG (box of 50)": "15",
                "Heavy Pistol, Hvy. SMG (box of 50)": "18",
                "Very Heavy Pistol (box of 50) ": "20",
                "Assault Rifle (box 100) ": "40",
                "Shotgun (box of 12)": "15",
                "20mm Cannon round (1) ": "25",
                "Arrows (12) ": "24",
                "Crossbow Bolts (12)": "30",
                "Airgun pellets (100)": "6",
                "Needlegun rounds (50)": "25",
                "Flamethrower Reload": "50",
                "Micro Missile Reload (4ea)": "100"
              },
              "Options(Type: cost)": {
                "Type": "table",
                "Silencer ": "100",
                "Holster (all types)": "20",
                "Shoulder sling ": "5"
              }
            }
          },
          "Armors": {
            "Description": "This is the next most important puchase for the well-dressed punk. Most armors in the 2000's are made of epoxide laminates, plastic mesh weaves and thin metal or ceramic insert plates. They are light, but often bulky; each one has an Encumber­ance Value (EV) which is subtracted from your character's REF, and a Stopping Power (SP), which refers to the ability of the armor to stop damage. The Stopping Power is subtracted from the amount of damage done by the hit. Armor includes: ",
            "Types": {
              "Heavy leather (Jacket or Pants) SP=4 ": "Good tor road rash, stopping knives, etc. A good . 38 slug will probably rip you to bits, however. ",
              "Kevlar T-Shirt/Vest SP=10": "Can be worn unnoticably under most street clothes. Will stop most rounds up to a .45 ACP",
              "Kevlar Armor Jacket SP=14 (Lt), 18 (Med) or 20 (Hvy)": "Personal protection for the fashion conscious, these li ghtweight Kevlar jackets have nylon coverings that resemble normai jackets. ",
              "Helmet SP= 14 (steel) or 20 (nylon) ": "Heavy duty protection for the head, standard for most military. Some are made of steel, others of kevlar and high impact plastics. Most (90%)have tace shields with 1 /2 the SP leve! as the rest of the helmet. ",
              "Flack Vest/Pants SP=20 ": "Standard protection for combat soldiers, the flack vest is designed to stop small arms fire, grenade shrapnel, but only slow up assault r1fle rounds. ",
              "Doorgunner's Vest SP=25 ": "Heavy duty protection for stationary positions, like machinegun nests, helicopter doors, etc.",
              "MetalGear SP=25 ": "Laminated expoxide plate armor. Bulky and designed in modular sections, with helmet, arrn & leg coverings, torso and back clamshell. "
            },
            "Armor List": {
              "Cloth, leather": ["armor","Arms, Torso, possibly legs ", 0, 0, "Varies"],
              "Heavy leather ": ["armor","Arms, Torso, possibly legs ", 4, 0, 50],
              "Kevlar T-Shirt, Vest": ["armor","Torso", 10, 0, 90],
              "Steel helmet ": ["armor","Head", 14, 0, 20],
              "Light Armor jacket": ["armor","Torso, Arms", 14, 0, 150],
              "Med Armor jacked ": ["armor","Torso, Arms", 18, 1, 200],
              "Flack vest ": ["armor","Torso", 20, 1, 200],
              "Flack pants ": ["armor","Legs", 20, 1, 200],
              "Nylon helmet ": ["armor","Head", 20, 0, 100],
              "Heavy Armor jacket ": ["armor","Torso, Arms", 20, 2, 250],
              "Door Gunner's vest":["armor","Torso", 25, 3, 250],
              "MetalGear": ["armor","Whole body", 25, 2, 600]
            }
          },
          "Special Equipment": {
            "Fashion": {
              "Generic Chic": ["specialEquip",20, "This is the standard Streetwear, made up of colorful modular component5 in many colors. Bell5, coats, sashes, boots predominate. "]
            },
            "Tools ": {
              "Techscanner": ["specialEquip",600, "A small handheld microcomp with various 1/0 connecters and probes. Techscanners run diagnostic programs, identify and examine malfunctioning components, and d11play internal schematics on a small screen. "]
            },
            "Personal Electronics ": {
              "Holo Generator": ["specialEquip",500, "Small box (approx. 4x2x6 inches) projects a holographic picture from a replacable chip. Generato, is compatible with chips from most digitai cameras. Can be linked with a di9ital Recorder/Player. "]
            },
            "Data Systems ": {
              "Laptop Computer": ["specialEquip",900, "The common portable, with internal hard drive, video board (detachable), and slots for data/ programming chips. These units do not have the advanced CPUs and memory spaces available in a regular computer system; they cannot be used for Netrunning. "]
            },
            "Communications ": {
              "Mastoid Comma": ["specialEquip",100, "All commos are radio transceivers. This one is glued to the jaw and tempie; you send via subvocalization and receive with soundless vibrations. Range 10 miles. "]
            },
            "Surveillance ": {
              "Binoglasses": ["specialEquip",200, "These high-tech vision aids combine binocular effects with a laser rangefinder, and sometimes IR lenses. More expensive versions will have a digitai camera built in. "]
            },
            "Security": {
              "Cardlock Decryptor": ["specialEquip",100, "The probe of this device is inserted into a card lock instead of the normai card. A Decryptor operates by adding +5 to your basis'. TECH+Electronic Security+ 1D10 skill check against the lock"]
            },
            "Medical" : {
              "Dermal Stapler": ["specialEquip",1000, "This automaticaliy pulls the sides of a wound together and sutures it with staples of a compressed organic materiai that dissolves alter an elapsed time."]
            },
            "Furnishings ": {
              "Nylon Carrybag": ["specialEquip",5, "The athletic bag/kitbag of the 2000's, with a variety of logos to choose !rom. Sizes vary. "]
            },
            "Vehicles ": {
              "Scooter": ["specialEquip",500, "This is an updated, electrically powered version of the old Riva and Vespa motorscooters of the 1990's. Top speed about 50 mph, scooters can getabout 6 hours.of trave I per fastcharge (about 5 minutes at any serv,ce station). "]
            },
            "Lifestyle ": {
              "Data Term™": ["specialEquip","1 per minute", "This is a curbside computer terminal, with access to news, weather, city maps, events schedules and other useful stufi. A DataTerm can also be used as a plug-in point to the Net. Terms are mounted in concrete pillars and are nearly indestructable. Theoretically. "]
            },
            "Groceries ": {
              "Kibble": ["specialEquip","50 per week", "A mass-produced nutrient that satisfies most requirements lor sustenance, but tends to look, smell, and taste like the dry pet food it takes its name from. "]
            },
            "Housing": {
              "Coffin": ["specialEquip","20 per night", "One step up from a sleeping bag on the street. A stacked accomodation which resembles its namesake, these sleeping boxes arefound in airports and flophouses worldwide. Usually coin-operated with a time limit, the coffin gives you just enough room to turn around or read ,n bed; restroom accomodations to be found elsewhere. More expens,ve models will have a phone or mini-TV inside. "]
            }
          }
        },
        "FRIDAY NIGHT FIREFIGHT": {
          "Description": "Friday Nlght Flreflght (FNFF) is a weapons combat system for using modem, futuristic and archaic firearms in Cyberpunk adventures. lt's designed to cover ali major elements of weapons combat in an easy to use format, allow­ing realistic firefight action without resorting to lots of tables and charts. FNFF also covers melee weapons, hand to hand combat and martial arts as well, ali in a simple system that allows you to use strategy over firepower. There's a lot of vague ideas and theories about modem weapons encounters­most of them from the Hollywood Never-Empty-Six-Gun-School of Armed Combat. These misconceptions have crept on little flat feet into the design of many roleplaying games, leading to char­acters who can be repeatedly shot with large caliber handguns until they run out of \"hit points\" and who can fire lngram MAC-10's one-handed and hit with every bullet. In otherwords, good, clean fun. FNFF is not good, clean fun. Most of the data herein has been complied from ballis­tics reports, police data, FBI statistics and other not-clean fun sources. These sources tend to point to a couple of basic truths about firefight combat. 80% of most gunfights occur between untrained amateurs at a range of 21 feet. 40% of these raging gun battles happen within 8 feet or less! Most (60%) occur in dimly lit and difficult conditions-dark, rainy alleys, with both partici pants panting and out of breath, pausing momentarily to snap off a badly aimed shot at a fleeing shadow, then ducking back for cover. Hits are surprisingly rare. When they do occur (assuming a large caliber weapon's in­ volved), the victim is usually hors de combat on the first shot from a combination of wound-shock and te􀀄 ror. A solid hit with a .44 magnum will usu­ally splatter a real per­son all over New Jer­sey. On the other hand, this is Cyberpunk, right? So why are we telling you ali this if we don't in­tend for you to go in -there with guns blaz-ing? lf a large caliber handgun is truly some-thing to be respected, who wants to lose character after character until they get the point? Here's where we get interfaced, gangboys. We've made this edition. of FNFF simpler, faster and more direct, so you can concen­trate on how to fight; how to win every encounter (you'II only get to lose once). We're going to give you ali the tips we've learned over hundreds of our own encoun­ters, plus hottips from cops, combat grunts, SWATmasters and other veterans who've put it on the line for real. lt's true- a firefight is dangerous. But you can handle it. That' s why you' re Cyberpunk. ",
          "The Basics": {
            "Rounds & Turn Order ": "Combat in FNFF is divided up into rounds, each representing@3 seconds. Every round, each player gets to do something. The order of the round is based on an inititative roll of 1D10 plus the players REF stat, with highest rolls moving first to lowest rolls moving last. Reflex boosts are added to this roll where applicable. \nINITIATIVE= ROLL 1D1O+REF. HIGH ROLL FIRST. \nExample: Players A, 8 and C al/ have REF stats af 7 O. A rolls a 5, 8 rol/s on 8, and C rolls a 2. Turn arder wi/1 be 81 then A, then C. ",
            "Wait For Your Turn ": "You can elect to act later in the round, stepping in at any point to act. lf you have elected to wait until another player's turn has come up, you will be able to act after they have taken their turn in the round. Example: Turn arder is player A, then 8, then C. Player A decides ta wait unti/ player C has maved fram cover, then take his shot. Bywaiting, the new turn arder will be 8, C then A. ",
            "Party ln itiative ": "You may want to speed up your play by designating one member of the group as the party leader and have him roll initiative forthewhole group. His roll is added to REF scores of everyone in the group to deter­mine when each member of the group will act. ",
            "The Fast Draw or Snapshot": "By declaring a fast draw (aka snapshat) at the start of the round, you automatically add +3 to your initiative roll, taking a -3 penalty to hit (you're rushing into combat instead of preparing carefully). You also may not take advantage of scope, sights or other aiming advantages. The martial arts or melee verson of this technique is called the iai-jutsu or ightning strike.  \nFAST DRAW= + 3 TO INITIATIVE, -3 TO HIT\nExample: Ripperjack is faced with his long time enemy, Hargan. He knows Hargan has a higher REF than he does, so he e/ects to make an al/ out, b/azing attack before the giant con get in a move. The snapshooting bonus wi/1 give him the +3 advantage he needs. Ripperjack 's mono-katana arcs out in a searing iai-jutsu before Hargan con raise his own sword. Unfortunantly, the -3 point penalty for snapshots works against Ripper­jack, and his attack misses his opponent by a mile. ",
            "Actions": "During your part of the round, you may perform one actlon without penalty. This includes: \nMove up to your full Movement (lx your Movement Allowance In meters) per round. \nAttack up to your weapon 's max/mum Rate of Fire (ROF), or make a Melee attack.\nDodge (making yourse/f harder to hlt. Melee attacks only.)\nParry (deflecting damage onto some­thlng else.)\nEscape a hold or trap. \nAlm (galnlng + 1 to h/t for every con­secutive tum of almlng up to 3 rounds)\nReload or change weapons.\nMount or dismount from a vehicle.\nRepalr or glve Medicai Aid.\nPerform a non-combat task. ",
            "More Than One Action": "You may perform more than one action at a -3 penalty to each successive action. ",
            "Two Weapon Attacks ": "Two weapon attacks can be made at a -3 to hit penalty on both weapons used. ",
            "Ambushes & Backstabs": "Sometimes, the best way to deal with a very powerful opponent is to get the drop on him from behind; in short, setting an ambush. Ambushes gain a +5 to hit advantage . You may ambush or backstab by announcing your intent to hide or lie in ambush far a target. You can elect to set up an ambush any time: \na)The opponent is unaware of your location and your intention to attack. This can be accomplished by setting up a hiding piace ahead of time or taking advantage of a melee to get under cover and waiting far a shot. A victim of an ambush must make an Awareness roll greater than your \nStealth Skill+INT + 1D10\n, or you have automatically succeeded.\nb)The opponent's attention is on another situation, such as another attack or a task requiring great concentration. This can be accomplished by creating a distraction far your opponent, or by sneaking up on him while he is in combat with another com­batant. \nAMBUSH=+S TO ATTACK FOR 1 ROUND \nAn ambush doesn't mean you act first- it just means you have an attack advantage. lnitiative far the round is made as usual, and the ambushing character can spring the trap on his part of the round or can wait to see what develops befare making his attack. Until the attack is made, his opponent may not attack him, because he doesn't know he's in danger. An ambush may only be used far one attack; another ambush must be set up befare the bonus can be employed again. Example: Ripperjack decides to set up an ambush in a dark alley of the City. He rolls his Stealth Skill+lnt+ 7D1O for a total of 7D8. Along come Scarr and Hargan, his mortai enemies. At the start of the combat turn, initiative is Scarr, Ripperjack and Hargan. As they enter the trap, both Scarrand Hargan make Aware­ness Rolls. Scarr's roll is 7 2; Hargan 's is 20. \"lt's a trap!\" yells Hargan, but too late; Scarr didn 't know what was coming and couldn 't dee/are an attack or defense. Ripperack pegs him with a shot from his H&K Hellfire, using the +5 Ambush bonus. He won 't get the bonus on Hargan, because the blond giant made his Awareness roll and spotted him. His second shot misses, and Hargan throws him­self down behind a wrecked car and opens up with his 20mm autocannon. Savage fades down the alleyway to set up another trap. ",
            "Line of Sight and Facing": "Whenever you are facing your target and have a clear path between you, you can attack. You can clearly see anything forward of your shoulders. lllustrations of clear paths and facings are on pg. 107. "
          },
          "Damage": {
            "Description": "Damage in combat is deter­mined by rolling groups of six-sided dice. lf a rule says, \"roll 2D6\", for example, you would roll two six sided dice, total the results, and apply the total to the target you were attacking. lf the rule said \"roll 2D6+ 1 \", you wouldroll as above, then add 1 to the total. So much for creating damage. Let's take a step-by-step look at how to apply it. ",
            "Hit Location ": "The first step in applying damage is to figure out where to apply it. Most combat attacks are just barely aimed; you're looking for an opening, your opponent slips up, and you take it. This means that unless you attemptto aim your shot at a specific location (and take the -4 penalty for this), you will have to determine where you hit on a random basis. The Location section ofyour Hardcopy Form is designed for this; it lists ali body areas with a value from 1 to 10 written underneath. When your character is hit, roll 1d10 and compare the chart number to the roll to determine where he has been hit. Use some common sense with this rule; for example, if a character is standing behind a low wall, a roll of 7-8 (R.Leg) is pretty silly. lgnore it and re-roll. ",
            "Armor": "Armor is what stops targets from taking the damage you just located. The Armor SP section is directly under the Location section on the Hardcopy. Write the Armor \$topping Power (SP) value for each body area in the space corresponding to that body area. stopping power (SP) refers to the ability of armor to stop damage. Each type of armor has it's own \$topping Power. When the armor is struck by a round, the armor's SP is subtracted from the tota! amount of damage done by the hit. The remaining damage is then applied to the target area. lf the damage done is less than the SP of the armar, no damage is done. Example: Ripperjack is wearing a Kevlar jack et with on SP af 18. A 5.5 6 round strikes him in the chest, causing 14 paints af damage. The armar's higher SP thwarts the attack. The next shat daes 22 paints af damage. The armar reduces this by 18 paints. Only 4 paints get through ta cause Ripperjack harm.",
            "Hard and Soft Armors ": "Body armors are divided up by whether or not the majority of their protection is based on rigid metals/ceramics/composites, or on softer, more flexible baliistic fabrics. This is done for layering purposes and for some weapon damage effects. The table below is arranged with heaviest protection at the top, lightest at bottom. ",
            "Hard Armors": "Metal Gear\nPolice riot armor\nDoor Gunner's vest \nSteel helmet \nFlak vest/pants \nBallistic Nylon helmet \nM-78 RPA heavy vest \nCorp Mil body armor \nC-Ballistic Light Mesh",
            "Soft Armors": "Heavy Armor jacket \nMed. Armor jacket \nPolice patrol armor \nM-78 RPA jacket \nLight Arrnor jacket \nKevlar T-shirt/vest \nM-78 RPA T-shirt \nHeavy Leather \nSkinTight armor padding",
            "Layering Armor": "\"What a concept\", you think, shrugging into a bulletproofT-shirt, bulietproof vest and a Kevlar armar jacket. Theoreticaliy, one should be able to layer protection upon itself until he becomes invulnerable. Wrongo. First of ali, let's look at reality. lf the average cop could stack layers of armar on himself before tackling a domestic dis­turbance cali, you can bet he'd do it. But he doesn't, because it just isn't practical. Here's why. When you layer flack jackets, you aren't invulnerable; you're just immobile. While modem armar isn't as heavy as old fashioned armar plate, it's very encumbering from the movement angle.Straps, buckles, padding and stiff plastic add up to restrict arm movement, chafe the torso, and weigh down the legs. Pillsbury-doughboy pad­ded arms don't lift guns very well, and well­stuffed legs aren't much for bending, climb­ing and running. For this reason, every armar type in FNFF has an encumberance value (EV). When wearing body armar, add up the tota! of EV's (listed in the Armar Table), and sub­tract this from your character's REFLEX stat. Even if you're cybered up, a lot of armar is gonna cast you. ",
            "Maximum Armor": "Now, in addition to Encumberance Values, only a maximum of 3 layers of Armar can be worn at any one time; no more than one of these layers can be Hard Armar (see Hard/Soft Armors Table). The 2nd layer has an extra EV penalty of -1; the 3rd layer, an additional penalty of -2. Subdermal Armar and Badyplating cyberware options are considered to be armar layers; Skinweave is considered a layer, but receives no penalty. ",
            "Proportional Armor": {
              "Description": "When layering armar, or wearing armar behind an obstacle or cover, subtract the smalier SP from the larger one. Find the difference on the table below and read across to the other column. This is the bonus number you add to the larger SP to determine overall protection from the armar/ armar, or armor/cover combination. lf you have three or more layers of protection, calculate in pairs from the inside out. (example: For armors A, B, C, you compare A and B; determine the bonus number, and then compare the new strength of the larger of the pair to armor C.) ",
              "Difference SP/Bonus Number": {
                "Type": "table",
                "0-4": "+5",
                "5-8": "+4",
                "9-14": "+3",
                "15-20": "+2",
                "21-26": "+1",
                "27+": "+0"
              }
            },
            "Armor Piercing Rounds ": {
              "Description": "There's another reasan why armar isn't the universal cure for flying lead, and it's called Armor Piercing (AP) rounds. These are bullets designed to deliver their full impact to a single point, instead of mushroaming out like a normai bullet. They don't cause as much damage as a standard lead or hallow point round (1 /2 normai damage), but they cut through armor like a hot knife through cheese. As a result, whenever AP raunds are encauntered, armor will have one half it's tatal SP value. \nFor example, say a 5.56 AP round causes 30 points of damage. lt hits SP 7 O armor, which reduces it by 5 (7 0/2=5). The remaining 25 points are further reduced to 7 2 (25/2= 7 2.5, rounded down to 7 2), based on an AP round's /ower damage capacity. \nThe same is true of knives, swards and other edged weapons. Note that armors marked with a check (-v) on the Armar Table are at half SP effectiveness against edged weapans. \nThe smart solution in a cambat situation is to rely on the lightest armor you think you can get away with unless you're planning to take on a stationary position or go up against very heavy firepower. ",
              "Staged Penetration": "Armor doesn't just keep absorbing damage indefinitely. One option is to use the concept of Staged Penetration. Each time the armor is struck by a pentrating attack (i.e., an attack that actually exceeds the armor's SP), it's SP is reduced by 1 point. When the SP reaches O, the armor will no longer stop damage. "
            },
            "Use Cover": {
              "Description": "You don't have to lug around an armar jacket with you-often the best armar is what you can find around you. Cover allows you to move from piace to piace, letting something else soak up the gunfire. ",
              "COMMON COVER/SPS": {
                "Type": "table",
                "Sheetrock Wall": "5",
                "Stone Wall": "30",
                "Large Tree, Phone pale": "30",
                "": "25",
                "Brick wall": "25",
                "Concrete Block Wall": "10",
                "Wood door": "5",
                "Heavy Wood Door": "15",
                "Steel Door": "20",
                "Concrete Ultility Pale": "35",
                "Data Term": "25",
                "Car body, door": "10",
                "Armored Car body": "40",
                "AV-4 Body": "40",
                "Engine block": "35",
                "Mailbox": "25",
                "Hydrant": "35",
                "Curb": "25"
              }
            },
            "The Body Type Modifier": {
              "Description": "The next step after Armar is to apply your character's Body Type Modifier to the damage. This is a special bonus which reduces the effects of damage, reflecting the stamina and generai toughness of the character. Each time your character takes damage, subtract your Body Type Modifier from the total amount of damage before applying it to your character. \nOccasionally, you'll encounter a situation where the combination of armor and Body Type Modifier will seem to reduce the damage done to zero or less. A Body Type Modifier may never reduce damage to less than one- in these cases, the character will automatically take 1 point of damage. ",
              "BODY TYPE MODIFIER TABLE": {
                "Type": "table",
                "Very Weak ": "-0",
                "Weak": "-1",
                "Average": "-2",
                "Strong": "-3",
                "Very Strong": "-4",
                "Superhuman(only with cyber)": "-5"
              }
            },
            "WOUND EFFECTS": "At a LIGHT wound level, a character suffers no penalties to his activities. He just hurts a lot (\"lt's only a flesh wound ... \").\n•At a SERIOUS wound level, the character will be at -2 to his REF stat far all actions. He's hurting, bleeding, and definitely hampered.\nAt a CRITICAL wound level, the character's REF, INT and CL stats are automatically reduced by half (round up). The character is holding his guts in with one hand and doing his damndest to stay in the battle.\nIf MORTALLY wounded, the character's REF, INT and CL stats are reduced to 1/3rd normal (divide by 3, rounding up). Most characters are already out of the action by now, and are quietly going about the business of expiring. Messily.",
            "Stun/Shock Saves ": {
              "Description": "Every time a character takes damage, he must make a save against the effects of pain, shock, fear and blood loss. This is what you see in most Hollywood gunfights when the bad guy gets hit-staggering, falling back and so on, ali caused by pain and shock (see the sidebar tor a generai tirade about the fiction of knockback). \nThe Stun Shock Save is a serious thing, because it can put an opponent out of the picture faster than the actual damage from the wound. Police officers have actually died from the shock of a minor bullet wound in the toot (but we won't do that to your character). Other people have taken as many as thirty or torty gunshots and managed to keep moving tor up to ten minutes betore their minds got the message their bodies were telling them (\"Hey Bob, you're dead!\"). \nThe Stun Save is equal to your character's Body Type value, minus a penalty based on his current Wound State.",
              "Stun/Shock Saves Modifiers": {
                "Type": "table",
                "Wound state": "Penalty",
                "Light": "0",
                "Serious": "-1",
                "Critical": "-2",
                "Mortal": "-3",
                "Mortal 1": "-4",
                "Mortal 2": "-5",
                "Mortal 3": "-6",
                "Mortal 4": "-7",
                "Mortal 5": "-8",
                "Mortal 6": "-9"
              },
              "Hollywood effects": "A failed roll means the character is out of combat. You can add the special effects yourself from next table.",
              "HOLLYWOOD OVERACTING EFFECTS TABLE ": {
                "Type": "table",
                "1": "Screams, windmills arms, falls.",
                "2": "Crumples like a rag doll.",
                "3": "Spins around in piace, falls.",
                "4": "Clutches wound, staggers and falls.",
                "5": "Stares stupidly at wound, then falls.",
                "6": "Slumps to ground, moaning."
              },
              "Recover": "A Stun/Shock roll can be recovered from by rolling a successful check in a subsequent turn. "
            },
            "Very Important: Death Saves": {
              "Description": "Unless you have taken a Mortai Wound, your character is in no danger of dying; he only needs to make his initial Stun save to remain conscious. But if the wound is a MORTAL one, he has a chance of dying. Determining whether he survives requires that a Death Save be made, with a new save required every turn that the character remains untreated. Like a stun Save, a Death Save requires that you roll a value on 1d10 equal to or lower than your character's Body Type score, subtracting the leve! of severity tor the wound from your base chance to save. Mortai Wounds are rated from O to 8. \nExample: Hargan is Very Strong and takes a Mortai 4 wound. He must roll lower than (7 0-4)=6 to stay olive. \nEach turn, you must make another Death Save to see if you survive to the next turn. On a successful roll, you make it; on a failed roll, you will die at the end of the turn in which the roll was made. \nSooner or later, you'II fai I a roll and die. The only way out is stabilization.\nStabilization means the patient is no longer losing blood and that his major damage has been contained through use of drugs, battlefield surgery and/orwound dressing. A stabilized characterwill no longerbe required to make Death Saves each turn. Anyone (except the patient himself) can attempt to stabilize a mortally wounded character; it just works better if the physician has had some medical training. A lot better. A successful stabilization is made by adding your TECH stat, any Medicai Skill and one Dl O for a result equa I to or higher than the total number of damage points the patient has taken. Far example, Ripperjack has taken 20 points of damage, placing him in a Mortai 1 Wound State. To stabilize him will require a roll of 20 or greater. Once stabilized, the character is no longer in danger of dying unless another wound is taken. At this point, the whole messy business begins again ... \nThe chances of a successful stabilization roll can be increased by the following modifiers, added to your die roll.",
              "Modifiers": {
                "Type": "table",
                "Full Hospital & Surgery": "+5",
                "Trauma Team Ambulance ": "+3",
                "Life Suspension Tank": "+3"
              },
              "Stabilization success": "Assuming you make your stabilization rolls, you're going to survive to fight aga in. lf you fai I, no problem, that's why we have Body banks. Either way, to learn more about healing or spare parts brokering, check out the Trauma Team section, pages 114 to 125. "
            },
            "Making Attacks": {
              "Ranged Weapons": {
                "Description": "Ranged weapons are anything that is shot or thrown over a distance at the target. To make a ranged weapon attack (guns, bows, thrown objects, etc.) you must roll a combination of your: \nREF STAT+WEAPON SKILL+ 1 D10 \nequal to or greater than a specific hit number. The hit number is determined by the range between you and your target. ",
                "Hit Numbers": {
                  "Type": "table",
                  "Point Blank": "10",
                  "Close": "15",
                  "Medium": "20",
                  "Long": "25",
                  "Extreme": "30"
                },
                "Range Definitions ": {
                  "Type": "table",
                  "Point Blank": "The weapon is very close to or in actual physical contact with the target. lt will almost always hit, doing maximum damage.",
                  "Close": "The weapon is attacking at one quarter of the listed range.",
                  "Medium": "The weapon is attacking at one half of the listed range for its type.",
                  "Long": "he weapon is attacking at the listed range for its type.",
                  "Extreme": "The weapon is attacking at twice the listed range for its type."
                },
                "Modifiers ": "When making your roll, you must add any and all modlflers that apply to the combat situation to your final Attack Roll. There are modifiers for Target, Aiming, Weapon Type, Type of Firing, Position and Movement, ali listed on pg. 99. ",
                "Aiming ": "One way to improve your chance to hit is to aim. Each turn of aiming adds + 1 to your Attack, up to three rounds. Aiming assumes steady position, no movement, and a clear chance to track your target. ",
                "Critical Success ": "On a natural roll of 10, you have had a criticai success. Roll an additional 1d10 and add it to your originai roll. ",
                "Fumbles ": "On a natural die roll of 1, you have fumbled. You must roll an additional 1d10 and check the result against the Fumble Tab/e pg. 43) to see what happens. Fumbles can encompass a wide variety of effects. Most weapon fumbles include jamming or misfires. Automatlc weapons have the highest chance of fumbling, and will jam based on the Reliability of the weapon: When a fumble is rolled while using an automatic weapon, ignore the table on pg. 33, and roll a value on 1d10 higher than the Reliabliity value for the weapon. ",
                "Reliability Table": {
                  "Type": "table",
                  "Weapon": "Jams On",
                  "Very Reliable": "3 or lower",
                  "Standard": "5 or lower",
                  "Unreliable": "8 or lower"
                }
              },
              "Automatic Weapons ": {
                "Description": "ways to use automatic weapons. The three round burst is used to put multiple shots on asingle target at any range. Full Auto is used to deliver a lot of bullets at close range to one or more targets. Suppresslve flre is used to force an opponent to keep his head down or risk taking a slug. Each form has its own advantages and disadvantages in combat, and the smart street warrior knows when to use the right technique for the right job.",
                "Three Round Burst ": "The three round burst is a setting used on most automatic weapons to conserve ammunition and improve accuracy. The three round burst gives you an automatic +3 to hit advantage at certain ranges. The attack is made as one action. lf successful, roll 1 D6/2 to see how many rounds actually hit the target. This technique may only be used against single targets. \n3 ROUND BURST= +3, CLOSE & MEDIUM ONLY ",
                "Full Auto ": "This attack is best used to cover a wide range of targets or to make sure a single target is dead, dead, dead. A weapon on full auto is a bucking bronco; hard to hold on a target more than a few meters away.Using a scope or taking aim is also impossible. Therefore, range is criticai in the full auto technique. \nThe full auto optlon is based on the rate of fire (ROF) of the weapon. lf attacking more than one target, you must divide the ROF of the weapon by the tota! number of targets (round down), then roll for each target individually. \nFULL AUTO RULES \nAt Close Range: \nFor every 10 rounds fired at Close range, add 1 to your Attack Total. \nAt Medium, Long and Extreme Ranges: \nFor every 10 rounds fired at Medium, Long and Extreme ranges, subtract 1 from your Attack Total. For every point of success over the required to Hit roll, one round hits the target, up to the maximum ROF for the weapon. \nNUMBER OF HITS=# POINTS > THAN TO HIT NUMBER",
                "Suppressive Fire ": "Suppressive fire is used to cover an area (called a flre zone)with bullets, making the area hazardous to pass through. AII targets entering or crossing the fire zone during this attack must make a \"save\" against taking a bullet by rolling their Athletics Skill+ REF + 1 D10 and beating a save number. A fai led save means the target takes 1 D6 rounds, each randomly locateci. \nThis save number is determined by dividing the tota I number of bullets fired by the width of the fire zone. \nExample: 64 rounds into a 2 meter area would require a save of 32 or higher. 64 rounds into a 5 meter area would require a save of 7 2 or greater. \nSA VE= NUMBER OF ROUNDS DIVIDED BY THE WIDTH OF THE FIRE ZONE IN METERS \nYou may overlap the fire zones of more than one weapon, dividing the total number of shots to determine the save number. For example, two Uzis with an ROF of 32 would piace 64 bullets into the fire zone. \nTwo rules are immediately apparent with suppressive fire. First, it's only useful when you can fire a LOT of rounds into a small space. This means teams should coordinate their actions and fire at the same time, placing the maximum number of rounds into the fire zone. Also, the fire zone should be a tight as possible (the minimum width of a fire zone is two meters). "
              },
              "Unusual Ranged Weapons ": {
                "Description": "These weapons are often used tor crowd control, stealth missions and other situations where you want killing to be only one of the options, or where you want a limited number of targets eliminated quickly.",
                "Airguns": {
                  "Description": "These are advanced versions of the \"paintball\" guns of the 1 990's. Airguns can be loaded with poison, marking paint, drugs or acid. ",
                  "Paint": "Bruise damage only. Head hits have a 5 in 10 chance of blinding the target for 3 rounds with paint in the eyes, and a 4 in 10 chance of permanently destroying the eye. ",
                  "Poison and Drugs": "To avoid the effects, the character must make a save roll. On a successful save, damage is reduced by half. ",
                  "Drug and Poison effects": "Type/Effect/Damage\nHallucinogen/Confusion/-4 INT\nNausea Drug/Illness/-4 REF\nSleep Drugs/Sleep/-2 to all\nBiotoxin 1/Death/4D6\nBiotoxin 2/Death/8D6\nNerve Toxin-Gas/Death/8D10",
                  "Acid": "Acid causes 1 D6 in acid damage per pellet. Although armor will stop this, the acid will eat away at the armor, reducing its SP by 1 D6 per round, tor a total of 3 rounds. "
                },
                "Tasers": "Tasers require the victim to make a save against stun (see Saves, pg. 104). The save number is reduced by -2 tor every successive shot in a three-turn time period. Tasers can be recharged from wall current, taking 1 hour to reach full charge. ",
                "Dart and Needleguns": "Dartguns can be loaded with poison or drugs. Each hitdoes 1 D6/2, pluseffect ofthe drug or poison used (see Airguns, above). ",
                "Power Squirtguns ": "Power squirtguns can be loaded with drugs or acids. Effects are as with Alrguns (above), with each \"squirt\" equal to 2 pellets. ",
                "Bows, Crossbows, Spears \n& Throwing Stars ": "& Throwing Stars \nAlthough they are not common, bows, crossbows, spears and throwlng stars are available in the 2000s. These weapons are either thrown (using the character's \nThrowing Skill tor shiriken, darts, knives and spears), or fired (using ArcherySkill). AII non grenade thrown weapons have a range equa I to the thrower's B0Dx3 in meters. "
              },
              "Beam Weapons": {
                "Description": "Beam Weapons include lasers and mlcrowave weapons. Powerful beam weapons are extremely rare in the Cyberpunk universe (1 in 10 chance of availability, and even then only from majorCorporationsand/orgovemments). ",
                "Lasers ": "Lasers have a rechargeable powerpack holding a total of 10 six sided dice of damage. You can use as little as 1 D6 or as much as 5D6 in a single shot, until you have used all 10 dice. Lasers recharge from wall current at a rate of 1 D6 per hour. \nExample: Ripperjack has recently captured a laser from on Arasaka guard. He has 10D6 to work with; he dials the powergrudge up to 5 06 and fires. At this rate, he'/1 only have one more shot before it's recharge time. ",
                "Microwavers ": {
                  "Desccription": "Microwavers are fired like any other ranged weapon, delivering 1 D6 in burn damage. In addition, any target within 1 meter of the path of the beam must roll 1 D6 on the microwaver side effects table to determine if there are electrical side effects on exposed cyberwear. Shielded cyberwear is noteffected by electrical side effects. Like lasers, microwavers recharge from a wall socket, taking one hour to reach a usable charge . ",
                  "Side Effects": {
                    "Type": "table",
                    "1": "Cyberoptics short tor 1 D6 turns",
                    "2": "Neural pulse! lf character has inter tace plugs, reflex boosts or other hardwiring, REF stat reduced by 1 D6/2 until repaired.",
                    "3": "Cyberaudio shorts tor 1 D6 turns",
                    "4": "Cyberlimb malfunction: Lose all useof cyberlimb tor 1d10 turns. Roll 1 D6 tor limb, re-rolling if no cyberlimb limb is present: \n1-2: Right Arm\n3: Left Leg\n4: Right Leg\n5-6: Left Arm",
                    "5": "Total Neural breakdown! Character reduced to twitching, epileptic fit tor 1 D6/3 turns. ",
                    "6": "No effects"
                  }
                }
              },
              "Area Effect Weapons": {
                "Description": "Area Effect weapons are fired just like any other type of ranged weapon. However, they are capable of covering more than one target at a time with a cloud of pellets, flame, explosive torce or gas. Area effect weapons include shotguns, grenades & exploslves, flamethrowers, mlsslles & rockets, mlnes and rocket powered grenades (RPGs). \nAttacks are made as with other ranged weapons, with the center of the area effect falling on the designated target, and anything within the area of effect taking damage as well. lf the target is missed, the true center of the attack must be determined. When calculating where a grenade or other Area weapon has hit, roll 1d10 to determine the directrion on the Grenade Table, then roll a second Dl O to see how many meters away it hit. ",
                "Shotguns": {
                  "Description": "Shotguns fire a cloud of small metal pellets called a \"pattern\". The width of the pattern is based on the distance between the attacker and the defender. Any target in a straight path between attacker and intended target is al so considered to be in the area of effect. Note: if something is between the path of the shotgun and its intended target, the intervening spaces behind that object are considered to be exempt from the effects of fire. ",
                  "Shotgun Table": "Range/Size of pattern/Damage\nClose,PB/1 meter/4D6\nMedium/2 meters/3D6\nLong/3 meters/2D6",
                  "Description cont.": "Any target within the pattern will take damage based on the range (damage listed on the Weapons Table on pg. 51 is based on maximum damage). \nExamp!e: Ripperjack opens up his shotgun on two boosters at medium range (pattern width=2m). He hits the first booster dead on. However, the second booster is within 7 meter of the first- the pattern over!aps him as we/1. Both take damage. Shotguns are a very effective weapon in situations where aiming isn't critical. For instance, in six foot hallways, there would be no way for a target to escape taking wounds no matter how much his reflexes were boosted. However, shotguns are also limited to relatively short ranges and don't do a lot of damage on the individuai pellet level."
                },
                "Autoshotguns": "One of the nastiest ho use to house weapons is the autoshotgun. In combat, you may make as many attacks as your weapon's rate of fire on Full auto. All shots must be within 1 meter of each other. Each attack has a -2 penalty for every additional shot past the first. However, when this means you can put five two-meterclouds of lead ali over an area, a -4 or -6 penalty is a small price to pay. Autoshotguns are slow, bulky and have lousy range, but they are hell on wheels when it comes to house to house short range combat. \nExamp!e: Ripperjack opens up with a CA WS, firing 5 shots. He takes a -8 penalty to his attack roll to do this. He targets a 5 meter hallway, spacing his shots in 7 meter interva/s. The hallway becomes Hamburger Heaven. ",
                "Armor-Piercing Effects of Shotgun Slugs": {
                  "Description": "These projectiles have normal AP ability vs. ali armors. Damage that penetrates Hard armor is not halved. Damage that penetrates Soft armor is halved as normai. This represents the concussive results of mass and impact by finned/saboted slugs. ",
                  "Table": {
                    "Type": "table",
                    "10 ga. slugs": "5d6+3 ",
                    "12 ga. slugs": "4d6+2 ",
                    "20 ga. slugs": "3d6+ 1 "
                  }
                },
                "Grenades ": {
                  "Description": "Grenades come in fragmentatlon, Incendiary, stun, dazzle, sonic, concussion and gas varieties. Each type has its own area of effect, usually between 2 to 5 meters. Grenades and explosives can be detonateci using timers, radio controls, tripwires or remote detonators. AII grenade types are available in hand or rifle-propelled versions, and are described in the Area Effect Weapons & Grenade Table, pg. 89. Grenades may be thrown up to 10x the character's Body Type in meters (-10m for every extra kg. past the initial 1 ), or launched to a range of 225 meters. \nGas : Gas differs from other grenade effects in that it moves around. To use gas, first determine the point of impact. AII targets within 3 meters are immediately affected. \nOn the next turn, determine which way the wind is blowing by rolling again on the Area Effect Table. Piace the new area of effect. Any target within the first and second areas of effect must save vs the gas, as well as any targets in a straight li ne the width of the gas cloud between the two points. On the third turn, the gas dissappates. \nGas grenades have eitherfatal or incapacitating effects. To avo id the effects, the character must make a save; armor doesn't help (although filters or gas masks will). On a successful Save, he will take half effects (a -2 REF reduced to -1, 406 reduced to 2, etc.). ",
                  "Gas Effects": "Type/Effect/Damage\nHallucinogen/Confusion/-4 INT\nNausea Drug/Illness/-4 REF\nSleep Drugs/Sleep/-2 to all\nBiotoxin 1/Death/4D6\nBiotoxin 2/Death/8D6\nNerve Toxin-Gas/Death/8D10"
                },
                "Flamethrowers": "Flamethrowers are much like other area effect weapons, with one difference; they can be \"swept\" between two points. When using flamethrowing weapons, you may decide both a starting point and an ending point; then roll to Hit, determining if you're on target. Missed rolls refer to the Grenade scatter eh art (pg.99). Anything caught in the sweep between the two points is ignited. Using these weapons in anything other than the cyberweapon form requires the Heavy Weapons Skill; cyberweapon flamers use Handgun Skill as the default. Damage is 2Dl O the 1 st turn, 1d10 and 1 D6 the following two turns. Hard armors protect normally. Softarmors mustbe> l 55Pto protect the target, and are damaged 2pts/hit.",
                "Mines": "Mines come in two types; standard land mines and \"claymore\" antipersonnel mines. A land mine is designed to stop vehicles or other heavy objects; it is easily detected with most magnetic sensors (7 in 10 chance). You step on it and it blows up. Simple. Damage is 4D10. A claymore is designed to stop people, not vehicles. Claymores can be triggered by tripwires, time delays, or remote switches. Claymore mines have an hourglass shaped area of effect, rather than a circular one (see illustration). The dimensions of the \"front\" eone of destruction are 6m wide by 75m long; the dimensions of the \"rear\" eone of destruction are 6m wide by 6m long. At the juncture of the two cones is a 6 meter wide circle. Damage is 4D10. ",
                "Rocket Powered Grenades ": "Rocket Powered Grenades (RPGs) are a hybrid of grenade and rock et projectile, with far greater range and accuracy. They are also easier to acquire than missiles. With theexception of the disposable Armbrust RPG, most have the disadvantage of backblast,making them impossible to fire in a confined space. RPGS are fired as with other grenade launchers or shoulder arms, using the character's Heavy Weapons Skill. Damage is 6D10. ",
                "Missiles": "Missiles and Rockets include radar and optically guided missiles, mini-rockets and shoulder rocket launchers. Using missiles requires use of the Heavy Weapons Skill. When firing missiles and rockets, treat them as rifle-fired grenades with longer ranges and larger areas of effect. Damage varies. \nNote for Rockets and Missiles: lf a racket or missile has an Armor-Piercing warhead, the armor's SP is halved, but the damage that penetrates is not. ",
                "Explosives": {
                  "Description": "Explosives vary from grenades in that the more you use, the bigger the blast area. Explosive amounts are defined as units; one unit of TNT would equal one stick; one unit of plastique would be an ounce, etc. Take the area covered by one unit of explosive and multiply this by the total number of units. Damage is applied to the overall body, rather than to a location. \nExample: Ripperjack lumps four sticks of TNT together and tosses them into on abandoned building 7 O meters away. One stick has a b/ast area of 3 meters--4x3= 7 2 meters. Ripperjack is caught in his own explosion and takes big damage. Bad move, 'jack. ",
                  "Table": "Explosive/Unit/Area/Damage\nPlatique/1kg/4m/7D10\nc6/1KG/5M/8D10\nTNT/1 stick/3m/4D10"
                },
                "Molotov Cocktails ": "Molotov cocktails are the favorite of wouldbe terrorists and people with a lot of gasoline, rags and empty bottles around. A molotov covers 2 meters for every I iter of fuel used (a standard soft drink bottle would cover 2 meters). Damage (2Dl O) is applied to the overall body, rather than to a location."
              },
              "Melee Attacks": {
                "Description": "Melee attacks include clubs, knives, swords, axes, chalnsaws, sledgehammers, monokatanas and monoknives, monomolecular chalns, cyberbeasts, battlegloves, rlppers, scratchers, martlal arts weapons, hand to hand attacks and brawllng. \nMelee attacks differ from ranged attacks in that you are opposing a person, instead of a target. To make a melee attack, the formula is: \nATTACKER REF+SKILL+1D10 \nVS \nDEFENDER'S REF+SKILL*+1D10 \n*Martial arts, Fencing, Melee, Dodge or Athletics can be used, depending on situation and Referee decision. ",
                "Martial Arts & Brawling ":  "Brawllng and Martial Arts attacks are different from other melee attacks in that an attackcan be made in a number of ways. You could, as an attack, use next table. ",
                "Table": {
                  "Type": "table",
                  "Strike": "Cause 1 D6/2+ Damage Modifier.",
                  "Kick": "Cause 1 D6+Damage Modifier.",
                  "Block/Parry": "Stop or absorb damage.",
                  "Dodge": "-2 to Attacker's hit roll.",
                  "Disarm": "On successful roll, knock or remove weapon from opponent's hand.",
                  "Throw": "Requires a Grapple first. Opponent is knocked to ground, taking 1 D6+Damage Modifier, plus making a stun roll at -2.",
                  "Hold": "A painful joint or body hold. You must Grapple your opponent first. Foe is immobilized until an escape is made.",
                  "Escape": "On successful roll, you are free of the hold and may move.",
                  "Choke": "Requires hold or grapple as the previous move. Opponent takes 1D6 damage per turn.",
                  "Sweep/Trip": "Knock opponent to ground. He is -2 to next his attack; you gain +2 to your next attack.",
                  "Grapple": "A grabbing or holding move, prerequisite to applying a throw, choke or hold as the next action."
                },
                "Martial Arts": {
                  "Description": "Martial Arts are traditional forms of melee combat that have been developed to be deadlierthan regular brawling. AII martial arts techniques have key attacks- attacks which reflect the particular strengths of the technique. When a key attack is used, such as a karate kick, the character gains an +2 to +4 attack bonus (depending on the style of martial art). \nFor example, Karate would have the following moves: \nStrike: +2\nBlock/Parry: +2\nKick: +2\nA Karate Master would be able to do any other type of move, but would be better at these three. \nA Master of Choi Li Fut would have: \nStrike: +2\nBlock/Parry: +2\nKick: +2\nThrow: +1\nDodge: +1\nmaking him far more versatile than our Karate Master.Of course, it would far more difficult to learn Choi Li Futthan Karate; this is reflected in the dlfflcultylevelof the form. Thenumberof lmprovement points normally required to increase your level of skill is multiplied by the difficulty level to show this. A full list of martial arts, difficulty levels and key attacks is on pg. 100. ",
                  "Damage": "In addition, martial arts are far more deadly than regular brawling. When using martial arts, you will gain a damage bonus equal to your current level of martial arts in addition to any strength bonuses. "
                },
                "Dodging": "Defenders can try to dodge melee attacks by announcing their intention to dodge at the start of the turn. This will impose a -2 attack penalty to any attacks made against them in that turn; however, anyother actions the defender makes will have a corresponding -3 penalty for each successive action.\nDODCE=-2 TO ATTACKER ROLL, -3 TO DEFENDER'S OTHER ACTIONS ",
                "Parrying": "Defenders may also elect to parry melee attacks by announcing their intention to parry at the start of the turn. Any attacks made during the turn must expend their damage against the parrying object first. \nSwords and other bladed weapons can be used to parry without taking damage, butmust make a save ( 9 or lower on 1d10 for normai weapons) to avoid breaking. Any other actions the defender makes will have a corresponding-3 penaltyfor each successive action. \nPARRY= STOPS THE ATTACK AT -3 TO DEFENDER'S OTHER ACTIONS ",
                "Melee Damage ": {
                  "Description": "When making melee attacks with weapons, the damage is listed as part of the weapons description. \nWhen making a melee attack, you must also add a damage modifier based on your character's body type to any damage. This damage modifier is listed in the Damage Modifier Table below. ",
                  "Damage Modifier": {
                    "Type": "table",
                    "Strength": "Add to damage",
                    "Very Weak": "-2",
                    "Weak": "-1",
                    "Average": "0",
                    "Strong": "+1",
                    "Very Strong": "+2",
                    "BodyType 11-12": "+4",
                    "BodyType 13-14": "+6",
                    "BodyType 15+": "+8"
                  }
                },
                "Monoknives, Monokatanas ancl Slice & Dice ": "Monoknlves, monokatanas and Sllce & Dlces do double damage on a natural attack roll of 10. These weapons will always break on a fumble (a natural 1 ), and require a special roll to determine if they shatter when used to parry (4 or less on 1d10). Unless otherwise noted in the weapon's description, ali mono-edge weapons are at 1 /3xSP vs. soft armors, 2/3xSP vs. hard armors. ",
                "Cyberbeasts ": "\"Cyberbeast\" is the popular term used to describe any cybernetically controlled weapon that is stored in the body and yet has thecapacitytoattackon itsown. Cyberbeasts may make one attack per turn. They have a tota I attack sklll of 10+ 1 D10; in all other aspects, they attack as characters would. The most common type of cyberbeast is the cybersnake, which cause 1 D6 in damage per attack. "
              }
            }
          }
        },
        "Trauma Team": {
          "Description": "So let 's look at the most important question first-is this guy going to survive or should we cali Savage Doc 's and arrange for a body pickup? ",
          "Death": {
            "Description": "Whenever a character's Wound State drops to MORT AL, he has a pretty good chance of dying. But when? In Cyberpunk, each time you are at a MORTAL wound state, you must make a Death Save to avoid dying. To make the Save, roll a 1 D10 value lower than your character's Body Type, subtracting the leve! of Mortalityfrom your base chance to save. Each turn, you must make another death save to see if the character makes it through another turn. On a successful roll, you make it; on a fai led roll, you will die at the end of the turn in which the roll was made. For example, say Savage has a Body Type of 7 O (Very Strong) and takes a Mortai 4 wound. He must roll lower than (7 0-4)=6 to stay olive. The first turn he rol/s a 5. Whew. The next turn, he ro!ls a 7 and expires. lmmediately, his mates start fi9htin9 aver who gets his boots. \nGet the point? Sooner or Jater, you'II fail a roll and die. The only way out is stabili\nzation. \nStabilization means the patient is no longer losing blood and that his major damage has been contained through use of drugs, battlefield surgery, and/or wound dressing. A stabilized character will no longer be required to make Death saves each turn. Anyone ( except the patient himself) can attempt to stabilize a mortally wounded character; it just works better if the physician has had some medicai training. A lot better. A successful stabilization is made by rolling  a total of your TECH stat, any Medical Skill and one Dl O for a result equa! to or higher than the tota! number of damage points the patient has taken. For example, Savage has taken 20 points of damage, placing him in a Mortai 7 Wound State. To stabilize him wi/1 require a roll of 20 or greater. Once stabilized, the character is no longer in danger of dying unless another wound is taken. At that point, the whole messy business begins again ... \nThe chances of a successful stabilization roll can be increased by the following modifiers, added to your die roll.",
            "Advantage/Add to die roll": {
              "Type": "table",
              "Full Hospital & Surgery ": "+5",
              "Trauma Team Ambulance": "+3",
              "Cryo Tank": "+3"
            },
            "Death State ": "But let's say your ripperdoc had a Medicai Tech Skill of 2 ... \nWe can do some pretty amazing things these days. We can grow skin, blood, organs, limbs and muscle tissue in collagen-saccharide tissue tanks. Other parts, like toes, fingers, eyes and internal organs can also be purchased from the locai Body Bank and grafted on with advanced microsurgery. What we can't do is regrow souls. Once you're dead, you're dead. \nLet's amend that: once you're DEAD 10, you're dead. Because twenty-first century medicine is so good at reviving the clinicallydead, Trauma Team™ lnc. (theworld's largest paramedica! service, with offices worldwide), has established ten levels of death, each succeeding level a measure of how difficult it will be to revive the patient. This measuring system is called Death State. For every minute (six turns) that you are clinically dead, your death state increases by two levels. Example: I am killed at 9:00. Three minutes pass before the Trauma Team™ AV-4 arrives. I am now at Death State 6. \nThis is of criticai importance to the dead Cyberpunk character. When the Trauma Team arrives, a roll must be made to determine if the patient can be revived. This roll, on 1 Dl O, must be higher than the current Death State number, or the patient is a candidate for the Body Bank. On a successful roll, the patient is stabilized at his last Wound State and the process of healing can begin. "
          },
          "Healing": {
            "Description": "Okay, so you're not on a slab in Savage Doc's piace ... \nIn arder to recover from damage, characters must make some type of medicai skill check. Otherwise, the patient continues to take damage (from infection and system shock) at the rate of 2 points per day. lf the patient is at a Mortai Wound State, he must make a daily Death Save as well as taking this damage. Without medicai aid, you're going to run out of luck pretty soon. This is probably why humans invented medicine in the first piace. \nTo make a successful medicai skill check, you must roll a value (using TECH, your medicai Skill and 1 Dl O) greater than the total number of points of damage the patient has taken. Medicai skill checks are made with two skills, First Aid or Medicai Tech. ",
            "First Aid": "First Aid involves cleaning and dressing the wounds, administering medication, setting broken limbs and putting on splints. When a character makes a successful First Aid skill check, the patient will recover at the rate of 0.5 points per day. Example: A Light wound would be healed in 8 days. A Criticai wound would heal in 24 days, a Mortai 3 wound in 56 days. Only one check need be made. You may (within reason and at Referee's discretion), perform first aid on yourself. On an unsuccessful roll, the patient regains no points. New attempts may be made once per day unti! a successful roll is made.",
            "Medical Tech": "Medicai Tech skill assumes that the character has studied medicine in a professional setting. This gives him the ability to perform surgery, prescribe drugs, and know the proper treatment of injuries. He can replace damaged organs with vatgrown pieces, graft on new limbs, or install cyberlimbs. You cannot perform Medicai Tech skills on yourself. \nA character with Medicai Tech skilis makes a check as if using the First Aid skill, however, with Medicai Tech, the patient wili recover at the rate of 1 point per day. Far example, a lightwound would be healed in 4 days. A Mortai 3 wound would heal in 28 days. Using Medicai Tech skilis supersedes the use of First Aid skilis; a patient on which both have been successfuliy performed regains points at the rate of 1 per day, not 1 .5! As with First Aid, the patient regains no points until a successful roll has been made. However, second attempts may be made once per day unti I a successful roll is made. ",
            "Speed Healing Drugs ": "Drugs can be used to speed the healing rate by 1 additional point per day. Expensive and often proscribed, these drugs have a neural side effect of reducing the patient's REF stat by 1 D6/3 far a week after use. Speedheol costs 1650eb per treatment. ",
            "Nanotechnology and Tailored Antibodies ": "Nanotechnology involves the use of incredibly tiny, psuedo-organic machines to perform minute surgical tasks. These tiny tools can be programmed to repair damaged cells with molecule-sized polymer threads, or to act as temporary bridges between mutilateci nerve endings. \nCombined with tailored antibodies, nanotech devices can speed healing to twice the normai rate (patients recover 1 point per day in addition to normai healing). A Light Wound far example, would be healed in two days, while a Mortai Wound O would completely heal in eight days. When combined with speed healing drugs, this rate is increased to 3 points per day, allowing the same mortally wounded character to be back in action in an unbelievable six days! \nHere's the catch. Besides being expensive (1500 eb. per treatment) nanotech is available only in certain hospitals (1 in 10). But ifyou've gotthe money, it's the bestoption far getting back on the Street fast. ",
            "Being Patient ": {
              "Description": "The first thing to remember is that after a First Aid or Medicai Tech roll is made, the patient stillhas to actually recover (this isn't a fantasy game where a magician can lay on hands and the gutshot victim springs up ready to tackle the next chalienge). Each Wound State imposes certain limits on the character: ",
              "Wounds": {
                "Type": "table",
                "Light Wound": "The patient is fuliy ambulatory; he can go about his business with a minor amount of pain. ",
                "Serious Wound:": "The patient is ambulatory, but will need his dressings changed once a day, and will be at -2 REF far ali actions. ",
                "Critical Wound": "The patient must spend at least half of his day in bed in order to regain any lost points of damage. Other activities must be limited at simple tasks, at a -4 REF to ali actions. Dressings must be changed twice a day, and nursing care of some sort must be available. ",
                "Mortal Wound": "The patient is bedridden. At Mortai Wounds 3 and above, he is probably comatose (50%) most of the time, and wired into ali kinds of machinery far life support. He requires constant care during the entire process, although he will not have to make Death Saves (he's been stabilized). "
              }
            },
            "A Sample Medicai History": "Ripperjack takes a gunshot wound (25 points total) to the gut, reducing him to Mortai 3. His partner has a high First Aidskili and makes a Stobilizotion roll to save him. So far, so good. \nAs soon as Ripperjack is stabilized, his partner calis in the Trauma Team™ . Four minutes later, the AV-4 touches down. The Trauma TeamrM Medie makes a Medicai Tech check on Ripperjack. The roll is successful. The Team takes 'Jack to Night City Generai Hospital and checks him into Emergency. As a Mortai 3 patient, it will take Ripperjack 1 3 days to recover enough to reach a Criticai Wound state. During this time, he will be in a hospital bed, wired to life support, and out of it on drugs (when he reaches Mortai 2, the doctors can take him off the drugs and life support). At Criticai, Ripperjack is able to hobble around the ward far a couple hours at a stretch, while the nurses look after him. In 4 more days, he's able to leave the hospital as long as he gets his dressings changed once a day. In 4 more days, he's nearly up to full function. lt's taken him 21 days to get back on the Street. Now he can start earning enough money to pay off his medicai bills. ",
            "Elective Surgery ": {
              "Description": "Not all medicai care is the result of accidents or combat. This is the Metal Age, and when you want to get cybered up, you gotta pay a price in blood. \nlf you're going to get wired with a cyberlimb, the first thing you'II have to decide is whether you want to keep the meat one. Far 10Oeb a month, a Body Bank will stare your old one unti! you decide to reclaim it, with only a 20% chance that someone will sell it far spare parts in the meantime. Far 200eb a month, this drops to a 5% chance; not perfect, but better than nothing. \nNow you've ditched the old meat in the freezer, it's time to get cybered up. A Medicai Tech skill is required to install cyberwear. You can't in sta li cyberwear on yourself. Each type of cyberwear has a Surgery Code (pg. 75). This code represents the minimum level of medicai care required to install the cyberwear, the length of surgical time required, the cast of the surgery, the damage taken in surgery and the Difficultyof the installation procedure. The Surgery Code assumes that a successful Medicai T ech check has been made on the patient as part of the operation. Healing is then based on the number of points lost due to the surgery.",
              "Surgeries": "\nNegligible \nRequired: Mali clinic or other drop-in bodyshop. \nSurgical Time: 1 hr. \nSurgical Damage: 1 point \nSurgical costs: lncluded with installation. DIFF= Easy (10) \n\nMinor. \nRequired: Medicai center or ripperdoc cl inie. Surgical Time: 2hrs. Surgical Damage: 1 D6+ 1 \nSurgical costs: 500eb \nDIFF=Simple (15) \n\nMAjor. \nRequired: Full hospital with surgery center. Surgical Time: 4 hrs. \nSurgical Damage: 2D6+ 1 \nSurgical costs: 1,500eb \nDIFF= Trained (20) \n\nCRitical. \nRequired: Full hospital with surgery center. Surgical Time: 6 hrs. \nSurgical Damage: 3D6+ 1 \nSurgical costs: 2,500eb \nDIFF= Difficult (25) ",
              "Example": "Morgan 8/ackshadow decides to get a cyberarm installed. The surgery code is Criticai (CR). Morgan takes 11 points in surgical damage (Wound State=Critical). The surgery is Difficult (25), requires a hospita/, takes six hours and costs 2,500 eb. lt wi/1 take Morgan 11 days to recover fully, but he can be back on the street in a week (operating at a Light Wound State). "
            },
            "Replacement Surgery ": "Remember; arms and legs don't grow back. Even if you heal, a missing limb wili stili be missing. You can chose to replace it with something out of a Body Bank or vat, or you can go for the metal. Replacing a limb with either requires a CR surgery code. A replacement meat arm wili cost about 1,000 eb. A replacement cyberarm starts at 2,000eb and goes up from there depending on what you want to plug into it. "
          },
          "Trauma Team lnc.": {
            "Description": "One of the most powerful Corporations of the Cyber Age is the Trauma Team™; a bonded and licensed paramedical franchise operating throughout the U.S., Canada and parts of Europe. These crack ambulance units are specifically designed to get to the scene of a fatality within seven minutes (or your money back). \nTrauma Team's crews are made up of the best paramedica! techs and staff available. The teams are usualiy made up of a driver, a senior Medtechie, an assistant and two security officers. They normaliy travel in a heavily armored AV-4 aircraft, supported by mobile tanker trucks and ground refuelling stations. A Trauma Team AV-4 contains the most sophisticated revivification and lite support technology available, including a mobile cryotank to lower the body temperature to approximately 24 degrees F, (the optimum temperature to prevent hemorrhaging, shock, and brain sweliing). Trauma Teams™ can be summonedbydialing91 l on any phone, and are equipped to trace the origin of any phone cali to its source. (You're billed fromthe momentyou cali, until delivery to the Hospital.) You may also opt to carry a deadman transmitter, which will activate and automatically signal a Trauma Team the moment your brainwave pattern falis into a coma \nstate. The most common \ntransmitter is in the form of a plastic credit card, which is activated by bending the card in half, and has a range of 20 miles. Trauma cards can be transferred between members of a group as long as the card's owner is present to sign the charges off when the Team arrives. \nThere are usually a dozen or more Trauma Teams on cali at any time in a major city. lmmediately after receiving an alert, the nearest Trauma Team™ unit goes airborne, their sophisticated tracking equipment homing in on the last known location of the patient. The pilot (who is skilled enough to set his six-ton AV-4 on top of a parked car if need be), drops in as dose as possible. lf the firefight is stili going on, the security team secures the area (using the AV's twin autocannon or their own portable weapons). The medtechs load the patient on board, shunting his life support to the onboard heart-lung machines, plugging him into onboard biomonitors, and chilling his body down in the refrigerateci tank for stabilization. Rapid surgery is performed on the spot for the most criticai wounds, while the med specialist uses a combination of electroshock, drugs and manual resuscitation to get the patient on-line again. The pilot slams down the throttles and the AV-4 rockets skywards on a pillar of exhaust, headed for the nearest emergency room. The entire process may have taken ali of four minutes from start to finish. \nAs a privately owned concern, Trauma Teams™ are not under any obligation to transport a casualty to a hospital, although they are responsible for reviving and stabilizing criticallywounded patients. Trauma Team fees are exceedingly steep (\$100 per minute), the best method of offsetting their exorbitant costs is to either carry Trauma Team services as part of a Corporate group insurance policy, or to establish an account with TI lnternational, paying a premium of \$500 in advance each month forcontinued service.",
            "Spare Parts ": "These are places where you can get the raw materials for putting people back together again. They are a staple of the Cyberpunk landscape, and a good source of steady incarne for the enterprising street dweller. ",
            "Body Banks ": {
              "Description": "Just in case it didn't work out, you can stili make a dead comrade pull his weight. The Lifeline Act of 1994 (an extension of the donor cards of the 1980s) allows a potential source of spare parts to carry a donor card in his wallet. This card must be registered with the federai government. Only do nor carded bodies can be turned into a donor center, where a bounty is paid. The bounty is based on the parts involved and the body condition at the time. The Government doesn't care who turns the body in. Ali you need is the card and a legitimate death certificate stating that the deceased dieci of natural or accidental causes, available through any locai coroner. The result is that many firefights end with a frenzied looting of bodies for donor cards-followed by another firefight over disputed claims and ending in another frenzy of looting. \nLegally, donor centers must be locateci in legitimate offices of the County or City Coroner's Office, or in a public hospital. However, a thriving black market in fraudulent donors thrives in most of the combat zones, usually out of \"ripperdoc\" clinics or Corporate centers (where high level execs get first pick of the new parts). \nThe biggest problem with Body Bank replacements is the availability of genetically matching parts. When attempting to locate a replacement limb or other part at a body bank, roll 1 Dl O. On a 1,2,or 3, the part is unavailable that day. On a 4 or 5, the part is in, but it may be the wrong color or have some other minor difference. ",
              "Part/Average Bounty/Sale Price": "Arm/500/1000\nLeg/600/1200\nHearth,Lung/700/1400\nLiver,Kidney/200/400\nEyes,Ears/800/1000\nOther Organs/200-300/400-600\n\nPoor Condition: 1 /2 normal bounty \nExcellent condition: 2x normai bounty"
            },
            "Vat Grown Tissue Banks ": "This reflects recent (201 7) improvements in genetic technology. Using tailored DNAand cell-growth vats, legs, arms, organs and other parts (including exotic designs like animalhuman crosses) can be grown to order. Unlike bodybanking, vat-grown parts are available to match any genotype. However, the process is relatively new and is more expensive than simply using an arm off the rack(2 times the price for a similarbody bank part in Excellent condition). "
          },
          "Bodysculpting": {
            "Description": "As long as you're having a few cybernetic grafts put on, why not go ali the way and re-do the whole thing? The art of bodysculpting includes skin tints, hair and eye color changes, breast enlargement and reduction, and generai all-over bodywork. You can have bone and muscle removed to become shorter, or have grafts added to become taller. Excess fat can be suctioned away, and collagen implants can smooth wrinkles, add weight, and change contours. Bodyscupting is readily available ina number of body salons, including Bodyshoppe, Parts N' Programs, and Docs R Us™ . Body sculpting in dudes appearance changes, appearance enhancement, and exotic fashion. ",
            "Change Apparence": "Looking like a favorite movie star or celebrity is a popular fad in 2020; enti re gangs, known as Posers, often have themselves bodyshaped to resemble famous people. Appearance changes are also a sta pie for Solos, Rockers, and any other sort of high mover who needs to change identities often. The cost of an appearance change is based on how convincing that change is. \nAt 1,200 eb, you look sort of like you wanted to; a casual observer could spot the difference on an AVERAGE Notice check. \nAt 2,400 eb, you look very much like you wanted; it would take a DIFFICULT Notice check to spot the sculpt job. \nWith 3,600 eb, you would look exactly as you wanted to look; spotting the sculpt would take a VERY DIFFICUL T Notice check. \nAt the top end (5,000 eb), it would require a NEARLY IMPOSSIBLE check to spot the bodysculpt from your originai face. ",
            "lncrease Attractiveness": "Cyberpunk style always goes to the extremes-you're either really ugly or very good-looking. One way to increase your Attractiveness is to have your body re-designed at the locai 'sculpt clinic. The process is expensive, granted, but many people think having the right \"look\" for that year is worth a few thousand euro. Cost is 600eb per Attractiveness point gained. For example, to raise my appearance four points would cost 2,400eb. \nWant to decrease your Attractiveness? A straight razor costs fifty-nine cents. "
          },
          "Exotic Fashion ": {
            "Description": "Bodysculpt jobs that emphasize the alien or inhuman are known as Exotics. Vatgrown tails, furred skins, hooves, animallike faces and ears, cats eyes and other semi human features are the highlights of this style. Exotic fashion is incredibly expensive, time consuming and usually a hobby among only the very rich and very bored. Prices are based on the individuai enhancements.",
            "Facial Sculpts": "Combine vat-grown parts such as muzzles, whiskers, animal-like ears, manes and cat eyes with the patient's normai features. There are entire boostergangs based a round various animai motifs of this type. Cost: 5,000eb",
            "Tails": "Are grown in vats, using gene bank tissue. They can be furred, tinted, scaled or bare skin. The tail is grafted to the base of the spine and linked to the nervous system by nanotech nerve threaders. Tails are relatively weak; they can pick up about a half pound. Cost: 3,000 eb.",
            "Hooves, claws and paws ": "Can be grafted to replace normai feet and hands. They are not as dexterous as normai digits (-2 to REF), but are occasionally included as part of a Exotic bodysculpt. Cost: 8,000 eb.",
            "Skin alteration": "Uses transform DNA to change the structure of the patient's skin. Using tailored DNA, the skin can be induced to grow patterned fur, light scales, or exotic skin colors. The big drawback is a 1 in 10 chance that the graft will mutate and develop into skin cancer. You get to pick the number. Cost: 10 000eb. "
          }
        }
      }

  ));

}
*/