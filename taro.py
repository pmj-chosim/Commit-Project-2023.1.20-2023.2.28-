#아직 신년 초니 타로 보는 걸 만들어 봤다 신년에는 좋은 일들이 많았음 좋겠네여
import random

# Define the list of Tarot cards and their meanings
tarot_cards = {
    "The Fool": "Beginnings, innocence, spontaneity, free spirit",
    "The Magician": "Manifestation, resourcefulness, power, inspired action",
    "The High Priestess": "Intuition, sacred knowledge, divine feminine, the subconscious mind",
    "The Empress": "Femininity, beauty, nature, abundance, nurturing",
    "The Emperor": "Authority, establishment, structure, a father figure",
    "The Hierophant": "Tradition, conformity, morality, ethics, a teacher or advisor",
    "The Lovers": "Love, harmony, relationships, values alignment, choices",
    "The Chariot": "Direction, control, willpower, victory, assertion",
    "Strength": "Strength, courage, persuasion, influence, compassion",
    "The Hermit": "Soul-searching, introspection, being alone, inner guidance",
    "Wheel of Fortune": "Cycles, change, ups and downs, fate, destiny",
    "Justice": "Justice, fairness, truth, cause and effect, law",
    "The Hanged Man": "Surrender, release, martyrdom, letting go",
    "Death": "Endings, beginnings, change, transformation, transition",
    "Temperance": "Balance, moderation, being sensible, harmony",
    "The Devil": "Materialism, lust, ignorance, feeling trapped, temptation",
    "The Tower": "Upheaval, chaos, revelation, awakening, sudden change",
    "The Star": "Hope, inspiration, optimism, insight, spiritual love",
    "The Moon": "Illusion, fear, anxiety, subconscious, intuition",
    "The Sun": "Success, joy, positivity, vitality, self-confidence",
    "Judgement": "Judgement, rebirth, inner calling, absolution",
    "The World": "Completion, fulfillment, wholeness, unity, travel",
}

# Define the list of Tarot card spreads and their descriptions
tarot_spreads = {
    "Past-Present-Future": "Reveals the past, present, and future influences on a situation.",
    "Celtic Cross": "A classic spread that covers various aspects of a situation.",
    "Relationship": "Provides insights into a romantic relationship.",
    "Career": "Gives guidance on career and work-related issues.",
    "Decision Making": "Helps with decision making by weighing the pros and cons.",
}

# Display the list of Tarot card spreads
print("Select a Tarot spread:")
for spread in tarot_spreads:
    print(spread, "-", tarot_spreads[spread])

# Prompt the user to select a Tarot spread
spread_choice = input("> ")

# Validate the user's input
while spread_choice not in tarot_spreads:
    print("Invalid choice. Please select a Tarot spread from the list.")
    spread_choice = input("> ")

# Get the description of the selected Tarot spread
spread_description = tarot_spreads[spread_choice]

# Prompt the user to enter the number of cards to draw
print("How many cards would you like to draw?")
num_cards = input("> ")

# Validate the user's input
while not num_cards.isdigit():
    print("Invalid input. Please enter a positive integer.")
    num_cards = input("> ")

# Convert the user's input to an integer
num_cards = int(num_cards)

# Shuffle the list of Tarot
shuffled_cards = list(tarot_cards.keys())
random.shuffle(shuffled_cards)

#Draw the selected number of Tarot cards
cards_drawn = shuffled_cards[:num_cards]

#Display the Tarot spread and the cards drawn
print("\nHere is your", spread_choice, "spread:")
print(spread_description)
print("")

for card in cards_drawn:
	print(card)
	print(tarot_cards[card])
	print("")

#Prompt the user to do another reading
print("Do you want to do another reading? (y/n)")
play_again = input("> ")

#Validate the user's input
while play_again not in ["y", "n"]:
	print("Invalid input. Please enter 'y' for yes or 'n' for no.")
	play_again = input("> ")

#If the user wants to do another reading, restart the program
if play_again == "y":
	print("")`
	exec(open(file).read())
else:
	print("Thank you for using the Tarot card reading program!")