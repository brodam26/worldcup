#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"
#68

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals)+SUM( opponent_goals) FROM games")"
#90

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"
#2.12500000...

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals), 2) FROM games")"
#2.13

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals)+AVG(opponent_goals),16) FROM games")"
#2.8125000000...

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT MAX(winner_goals) FROM games")"
#7

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT COUNT(winner_goals) FROM games WHERE winner_goals > 2")"
#6

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM games LEFT JOIN teams ON games.winner_id = teams.team_id WHERE round='Final' AND year='2018'")"
#France

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT name FROM games LEFT JOIN teams ON games.winner_id = teams.team_id WHERE year='2014' AND round='Eighth-Final' UNION SELECT name FROM games LEFT JOIN teams ON games.opponent_id = teams.team_id WHERE year='2014' AND round='Eighth-Final' ORDER BY name")"
#Algeria
#Argentina
#Belgium
#Brazil
#Chile
#Colombia
#Costa Rica
#France
#Germany
#Greece
#Mexico
#Netherlands
#Nigeria
#Switzerland
#United States
#Uruguay

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT(name) FROM games LEFT JOIN teams ON games.winner_id = teams.team_id ORDER BY name")"
#Argentina
#Belgium
#Brazil
#Colombia
#Costa Rica
#Croatia
#England
#France
#Germany
#Netherlands
#Russia
#Sweden
#Uruguay

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "SELECT year,name FROM games LEFT JOIN teams ON games.winner_id = teams.team_id WHERE round='Final' ORDER BY year")"
#2014|Germany
#2018|France

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%'")"
echo
#Colombia
#Costa Rica
