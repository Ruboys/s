import random

# Setting up the game
player_name = input("Enter your name: ")
print("Welcome to the football game, " + player_name + "!")

score = 0
attempts = 0

# Main game loop
while True:
    # Generating a random number between 1 and 3
    computer_choice = random.randint(1, 3)

    # Getting the user's choice
    user_choice = input("Enter your choice (1 for Left, 2 for Center, 3 for Right): ")

    # Checking if the user entered a valid choice
    if user_choice not in ["1", "2", "3"]:
        print("Invalid choice. Please enter a valid choice.")
        continue

    # Converting the user's choice to an integer
    user_choice = int(user_choice)

    # Printing the computer's choice
    print("Computer chose", computer_choice)

    # Checking if the user scored
    if user_choice == computer_choice:
        print("Goal!!!")
        score += 1
    else:
        print("Missed!")

    # Incrementing the attempts counter
    attempts += 1

    # Asking the user if they want to play again
    play_again = input("Do you want to play again? (Y/N): ")

    if play_again.lower() == "n":
        # Ending the game
        print("Thanks for playing! Your final score is", score, "out of", attempts)
        break
