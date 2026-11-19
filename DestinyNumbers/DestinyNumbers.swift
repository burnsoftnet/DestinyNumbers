//
//  DestinyNumbers.swift
//  DestinyNumber
//
//  Created by Joe Mireles on 7/19/12.
//  Copyright (c) 2012 burnsoft. All rights reserved.
//
/*


 The Celts considered numbers very important, even in some instances,  There is evidence that the Druids used numbers to represent certain ideas.

 You can also use the science of numbers to determin your destiny, or life goal, according to your given birth name: First, Middle and last.  However, if you have rejected your birth name in favor of another name, both names should be considered as forces that shape you and your life.  This also applies if you take a magic name to be used only in ritual work.
 The Destiny number is determined by assigning a numerical value to each letter, adding the numbers together, then reducing them to a single number.  Numbers eleven and twenty-two, however, are not reduced, as they have special significance of their own.


 */
import Foundation

class DestinyNumbers {

    var firstName: String = ""
    var middleName: String = ""
    var lastName: String = ""

    /// Returns the numeric value (1-9) assigned to a single letter, or 0 if it is not a letter A-Z.
    func getNumber(_ c: String) -> Int {
        switch c.capitalized {
        case "A", "J", "S":
            return 1
        case "B", "K", "T":
            return 2
        case "C", "L", "U":
            return 3
        case "D", "M", "V":
            return 4
        case "E", "N", "W":
            return 5
        case "F", "O", "X":
            return 6
        case "G", "Y", "P":
            return 7
        case "H", "Q", "Z":
            return 8
        case "I", "R":
            return 9
        default:
            return 0
        }
    }

    /// Returns the meaning text for a destiny number.
    func getMeaning(_ i: Int) -> String {
        switch i {
        case 1:
            return "You are a natural leader, independent and ambitious. Limitations frustrate you as you need freedom to make your own decisions"
        case 2:
            return "With tact, refinement, and strong intuition, you are good at avoiding problems and working well with others.  You need a partnership for your abilities to surface. Sensitivity, however, can make you vulnerable."
        case 3:
            return "A charming, expressive person with lots of creative talent, you could excel in writing, the theater, art, or music. Discipline and order, however, may be lacking."
        case 4:
            return "You are a grounded person who always approaches life in a methodical manner. You never make spur of the moment decisions and always see a project through the end."
        case 5:
            return "You must have freedom, change, adventure, and excitement in your life. Being an adaptable person, you work well under these conditions."
        case 6:
            return "A responsible person who has justice and honesty on your list of necessary life traits, your duties sometimes feel like heavy burdens. However, these traits also help you with creative talents, parenting, counseling, and negotiating problems. "
        case 7:
            return "This number expresses great curiosity for the truth in all things, clarity of though, and persistence of purpose. It also causes you stress if you engage in too much social activity."
        case 8:
            return "A highly competitive person, you enjoy challenges in your struggle to be the best of your field or overcome obstacles. You natural talents could fit you for several careers in management or negotiating."
        case 9:
            return "A born humanitarian, you are extremely idealistic, sometimes to point to being naive. Your friends and acquaintances come from all walks of life."
        case 10:
            return "You might fail to realize your own potential and consequently harbor deep-seated feeling of frustration, which will cause you to feel unfulfilled.  This makes you behave somewhat proud and arrogant manner to cover your feelings of inferiority.  You might have a good business skill, hate routine and can be quite eccentric."
        case 11:
            return "Your ideas, intuition, and psychic abilities can make you a powerful presence if you learn to control the energy. Because of a sense of separateness that developed in childhood, you may be cautious about sharing your ideas."
        case 12:
            return "You are a developed soul who have accumulated an unusual inner strength through many and varied lifetimes, But since you are still here you might want to change some of your old habits.  You are suspicious of those who offer a high position and carefully analyze it, and to be aware of false flattery and those who use it to gain their own ends."
        case 13:
            return "Known as a karmic number associated with upheaval.  Smart, but very vulnerable, touchy and quick to be offended. But you are loyal and make a good friend.  Even though you are quick to offend, remember that your words can do irreparable damage to the other person."
        case 14:
            return "Known as a karmic number, you need to learn independence, self initiative, unity and justice.  Be careful, you can have a strong negative influence on people. You become bored quickly and need to be challenged."
        case 15:
            return "You have a lot of spunk, but do not like to attract attention to yourself.  You are independent and can be rebellious at time. You might come off as tough, but in reality you can be very sensitive and loving on the inside."
        case 16:
            return "You must cultivate your personal willpower, independence and initiative action to enable yourself to overcome obstacles that come into your life.  You listen to you inner voice and analyze dreams."
        case 17:
            return "Congrats! you have a name that live on long after you die.  You are strong and soft, sympathetic and sentimental.  They say that people with the number 17 have extremely high psychic and clairvoyant abilities...what am i thinking now?"
        case 18:
            return "You attract people with a lot of problems and they just want to tell you their story.  You have a strong and loving soul. You would make a great teacher or vet or humanitarian work."
        case 19:
            return "You are a domineering character, with a very strong, magnetic personality.  With your assertiveness, you are able to inspire full confidence in others, but you can also break a person.  In relationships, you look for people that are the same, or those that completely obey."
        case 20:
            return "You are a caring and loving person, however you are sensitive and are prone to have trouble with your self-esteem.  You like to have many friends around you and are easily upset when your friends are fighting."
        case 21:
            return "You are cheeky, bubbly, popular and oozing with charisma. You are also easy going and have the ability to get along with everyone.  You have the ability to feel their way through any situation, attempting to understand both sides before they make a decision"
        case 22:
            return "This number is often referred to as the Master Builder. You are capable of making your mark on history in either a positive or a negative way, depending upon how you interact with others, the ethics you embrace, and the goals you set. "
        case 23:
            return "You like to experience everything in life.  This is a good and bad thing.  Despite the fact that you are open to new things, you can also fall into over indulging into drugs, alcohol, too much food, sex, gambling, etc."
        case 24:
            return "You are very popular, disciplined and loves family life. You are responsible, faithful and sympathetic, although you have a tendency to interfere too much in others' lives."
        case 25:
            return "You are is sometimes known to be very aloof and critical of others, so it is hard to form close bonds with one.  However, you possess a wonderful mind and are excellent in research."
        case 26:
            return "You have great leadership potential and may/ or have achieved great success or even fame.  You would make a great politician, property mogul, or business leader."
        case 27:
            return "You are often broad-minded and have a good sense of humor, although your calm exterior often covers up feelings of stress. you can hold a grudge and are tight with your cash, and are able to attract money from unusual sources."
        case 28:
            return "You will excel anywhere you can show your leadership qualities.  You tend to be stubborn and independent."
        case 29:
            return "You have a deep love of family and home-life and enjoy sports of all kinds.  You are able to multi-task, doing ten things at once."
        case 30:
            return "You are a talker and extremely creative, and it is this creativity that you need to put to good use during your lifetimes. "
        case 31:
            return "You have a good sense of what is right.  You are pragmatic, creative, honest, conscientious, and sincere."
        case 32:
            return "You tend to change your goals and even the means of them sometimes. You are a more then likely to pursue things that other find meaningless but it usually end up providing a lot of personal satisfaction."
        case 33:
            return "You are nurturing, creatvie and good at expressing your point of view."
        case 34:
            //http://affinitynumerology.com/number-meanings/number-34-meaning.php
            return "You are highly intuitive, spiritual, wise, and enjoy the activities of analyzing situations or resolving mysteries."
        case 35:
            return "You to aquire material things, the efficient accomplishment of goals, building things society finds useful, and managing people most effectively."
        case 36:
            return "You are compassionate, tolerant, and have a vision of an ideal society."
        case 37:
            return "You are a born leader but wishes to be left unhampered to carry out your own ideas, create your own inventions, and find your own solutions."
        case 38:
            return "You like to be part of a group. You wish to be in a position to benefit the group with negotiation and diplomatic skills it wishes it had."
        case 39:
            return "You desire to bring creative works that benefit humankind and to be accepted by artists and other creative people."
        case 40:
            return "You have a good sense of what is right.  You are pragmatic, creative, honest, conscientious, and sincere. You tends to be loyal, intense, and dedicated to the job at hand."
        default:
            return "Sorry, we currently do not have anything listed for \(i) at this time."
        }
    }

    /// Returns the total of the first, middle and last name letter values.
    func calcLetters() -> Int {
        return getNumber(firstName) + getNumber(middleName) + getNumber(lastName)
    }
}
