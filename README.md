<h2 align="center">leetcode-stats-api</h2>
<h3 align="center">The API for retrieving your LeetCode profile statistics</h3>

<h3 align="center">Check it out <a href="https://leetcode-stats-api.herokuapp.com/">here</a>!</h3>

<p align="center">
  <a href=https://forthebadge.com>
    <img src="https://forthebadge.com/images/badges/built-with-grammas-recipe.svg"></a>
  </br>
  <a href="https://leetcode-stats-api.herokuapp.com/">
    <img src="https://pyheroku-badge.herokuapp.com/?app=leetcode-stats-api"></a>
  <a href=https://travis-ci.com/JeremyTsaii/leetcode-stats-api>
    <img src="https://travis-ci.com/JeremyTsaii/leetcode-stats-api.svg?branch=main"></a>
  <a href="https://codecov.io/gh/JeremyTsaii/leetcode-stats-api">
    <img src="https://codecov.io/gh/JeremyTsaii/leetcode-stats-api/branch/main/graph/badge.svg?token=18BZG2Q3TT"></a>
  <a href="https://codeclimate.com/github/JeremyTsaii/leetcode-stats-api/maintainability">
    <img src="https://api.codeclimate.com/v1/badges/bf4637f9d193e3159e86/maintainability" /></a>
  </br>
  <a href=http://hits.dwyl.com/jeremytsaii/leetcode-stats-api>
    <img alt="HitCount" src=http://hits.dwyl.com/jeremytsaii/leetcode-stats-api.svg></a>
  <a href=https://github.com/dwyl/esta/issues>
    <img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
  <a href=https://opensource.org/licenses/MIT>
    <img src=https://img.shields.io/badge/License-MIT-yellow.svg></a>
</p>

***

Frontend Repo is [here](https://github.com/JeremyTsaii/leetcode-stats). Create aesthetic displays from this information!

### REST API Endpoint

Invoke URL: `https://leetcode-stats-api.herokuapp.com/<YOUR_USERNAME>`

#### GET:
Hitting the endpoint with your username returns the following statistics in the json response:
```
{
  "status": "success",
  "message": "retrieved",
  "totalSolved": 360,
  "totalQuestions": 1735,
  "easySolved": 146,
  "totalEasy": 458,
  "mediumSolved": 196,
  "totalMedium": 904,
  "hardSolved": 21,
  "totalHard": 368,
  "acceptanceRate": 50.92,
  "ranking": 47657,
  "contributionPoints": 2534,
  "reputation": 1,
  "submissionCalendar": {}
}
```

## What is the development workflow?

First clone the repository onto your local machine.

Maven must be installed to run the following commands.

#### `mvn clean`

Removes all files generated by the previous build.

#### `mvn package`

Builds the project (while also running all of the tests).

#### `mvn spring-boot:run`

Serves the Apache Tomcat servlet container on http://localhost:8080.

#### `mvn test`

Runs all the tests.

## By using Docker

first build the docker image

### docker build -t <ANY_TAG_NAME> .

run the docker container
### docker run -d -p 8080:8080 <ANY_TAG_NAME>
