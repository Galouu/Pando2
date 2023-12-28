# README

# Panda2 Application

## Introduction
Panda2 is a web application designed to visualize air quality measurements in various rooms.

## Feature
- Interactive charts for CO2, TMP, and VOCT data.

## Installation
To install Panda2, follow these steps:

      On Windows                                             |      On Mac
  # 1. Open the Pando2-MICHAUD.zip                           |  # 1. Open the Pando2-MICHAUD.zip
      1. Drag and drop the folder "Panda2" on your deskop    |      1. The folder "Panda2" is automaticly appear

  # 2. Open Visual Studio Code
    1. When Visual Studio Code is open :
      - On MAC : From the menu, use the File > Open... or Open Folder
      - On Windows : From the menu, use the File > Open... or Open Folder

        2. Find and Open the unzip "Panda2" folder
          - Click on Open

  # 3. Open a new Terminal in Visual Studio Code :
    - On MAC : From the menu, use the Terminal > New Terminal
    - On Windows : From the menu, use the Terminal > New Terminal

  # 4. In your VS.Code Terminal
    1. Install dependencies:
      - bundle install

    2. Set up the database:
      - rails db:migrate

    3. Start the server:
      - rails s / rails server

    4. Usage
      - Once the application is running, navigate to http://localhost:3000 in your web browser to start using Panda2.
