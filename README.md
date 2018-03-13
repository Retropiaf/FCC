This project is developed for and in collaboration with Unloop and uses [freeCodeCamp](https://github.com/freeCodeCamp/freeCodeCamp)'s open source codebase and curriculum.

The project is split in two repositories. This repository is the front-end repository. You can find the back-end repository [here](https://github.com/Retropiaf/FCCFront-end).


# Project Setup

To run this project from your terminal:
1. Clone both repositories
2. [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
3. Inside this repository (FCC-Frontend) on your computer, run `$npm install`
4. Start the back-end server from the back-end repository (FCC) in you terminal by running `$rails s`
5. Start the front-end server from the back-end repository (FCCFront-end) in you terminal by running `$npm start`

Back-end server adress: http://localhost:3000/
Front-end server adress: http://localhost:4200/

# Front-end

The front-end is written in Angular.

Main components:

Chapters:
* chapters directory: Contains the css, html, spec and javascript file for the chapters. The html file displays a list of chapters.
* chapter.service.ts: Contains getChapters (returns a list of chapters)
* chapter.ts: chapter model

Challenges:
* challenges directory: The html file displays a list of challenges for a given chapter
* challenge.service.ts: Contains getChallenges (returns a list of challenges) and getChallenge (returns a specific challenge)
* challengePage directory: The challenge page will display the text and the exercice for each challenge
* challenge.ts: challenge model

Other:
* list-item.component.ts is an interface that can be extended to create a list of items returned by a query in the format http://localhost:3000/challenges/1
* app.module.ts: All new component must be declared here
* app-routing.modules.ts: declares the application paths
* app.component.html: The main html file 
* app.component.ts: The main javascript (typescript) file 

# Features & ToDos
- When I'm on the main page, I can see a blurb about each chapter when I click on a chapter
- I can sign into my account to keep track of my progress
- As a logged user, I can quickly see which challenges and chapters I've already completed and what is next
- When I'm on a challenge page, I can see a clear explanation separated in paragraphers
- When I'm on a challenge page, I can see a text editor
- When I'm on the challenge page I can edit the text in the text editor
- When I'm on the challenge page, I can see my code from the previous challenge in the code editor ([see](https://www.freecodecamp.org/challenges/add-images-to-your-website))
- When I'm on the challenge page, I can the result of my code in the phone's browser ([see](https://www.freecodecamp.org/challenges/add-images-to-your-website))
- When I'm on the challenge page, I can click "run test" to test my code
- When I'm on the challenge page, I can click "reset your code" to clear my code
- When I'm on the challenge page, I can see a list of requirement for my code
- When I'm on the challenge page, I can a cross before an unmet requirement
- When I'm on the challenge page, I can a check before an met requirement
- When I successfully complete a challenge, I'm taken to the next one



