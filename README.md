<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)


# 📖 [Blog (rails app)] <a name="about-project"></a>

**[Blog]** is going to be a fully functioning blog website. It will have all the classic functions and users will be able to interact with the website by adding posts, liking them, and commenting under them.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/index.html">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>

- [Data is processed in models]
- [Users can register]
- [Users can add posts]
- [Users can like posts and add comments]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🚀 Live Demo <a name="live-demo"></a>

- [In progress...]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
ruby version 2.7.0+
rails version 7+
PostgreSQL

### Setup

Clone this repository to your desired folder:

`https://github.com/MattGomb/Blog.git`

`cd Blog`


### Install

Install this project with:

  `bundle install`


### Usage

This app uses postgreSQL databases for data preservation. Please provide valid credentials in a `.env` file and place it in the root folder.<br><br>
To initialize database run:<br>
`rails db:create`
`rails db:migrate`<br>

To run the server, execute the following command:
`rails s` or `rails server`<br><br>
this will start the server on http://localhost:3000/

To use the features of the app, you'll have to sign up using:

http://127.0.0.1:3000/users/sign_up

Once you sign up, you can log in from:

http://127.0.0.1:3000/users/sign_in

For API log in:

http://127.0.0.1:3000/api/v1/login

you ned to suply your email and pasword using JSON format in the body of the request as follows:

`{
  "email": "your_mail@mail.com",
  "password": "yourpassword"
 }`
 
 In the response of the request you will recieve a token that you will need to copy and will have 24 hours of validity. Please provide your token in the `Authorization` header of subsequent requests.
 
 To list posts for a specific user in JSON format:
 
 http://127.0.0.1:3000/api/v1/users/:user_id/posts
 
 To list comments for a post in JSON format:
 
 http://127.0.0.1:3000/api/v1/users/:user_id/posts/:post_id/comments
 
 Use this last endpoint with POST method to create comments for a post. Provide the text of the comment in JSON format as follows:
 
 `{
   "text" "your comment"
  }`
 

### Run tests

To run tests, run the following command:

`rspec`


### Deployment

You can deploy this project using:

**TBA**


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Author <a name="authors"></a>

👤 **Mátyás Gombos**

- GitHub: [@MattGomb](https://github.com/MattGomb)
- Twitter: [@MtysGombos1](https://twitter.com/MtysGombos1)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/gombos-matyas/)

👤 **Felipe Oyarzo**

- GitHub: [@jfoyarzo](https://github.com/jfoyarzo)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/jorge-felipe-oyarzo-contreras)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [improved user interface]
- [reference posts]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>


If you like this project please consider giving it a star!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

We would like to thank [Microverse](https://www.microverse.org/) for the opportunity.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
