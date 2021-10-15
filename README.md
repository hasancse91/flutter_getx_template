# Flutter GetX Template (GetX, Dio, MVVM)

This Flutter Template using [GetX](https://pub.dev/packages/get) package for State management, routing and Dependency Injection (bindings). We are using [MVVM](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel) (Model View ViewModel) architectural pattern here. For network call we are using [Dio](https://pub.dev/packages/dio) package. We followed the recommended folder structure of GetX and used [Get CLI](https://pub.dev/packages/get_cli) command line tool for creating the folder structure.

# Architecture of this project: MVVM

MVVM (Model View ViewModel) is one of the most popular architectural pattern for Android App development. Basically
this pattern separates User interface from business-logic and data-logic. So that it's divided into three layers: Model layer, 
View layer and View model layer. Let's explore it more deeply.

![mvvm](https://user-images.githubusercontent.com/3769029/137336079-1f3384d0-b9d6-4462-a2c4-4a3d2cc77e8a.png)

<b>ViewModel:</b> At first let's talk about ViewModel. Actually view model is a controller where we 
implement our business logics. It receives the data from the model and process the data according to
business logic and pushed into the live data observers which is observing by view.

<b>View:</b> View is the collections of widgets like Text, Image, Dropdown etc. Which will be displayed
to the users. Even it controls the user input. When it needs any data it command the view model (In this project it's controller)
for data and observe the response. Till then it may display a loader to the user.

<b>Model:</b> Model is basically backend logic. It controls the data source.

# To configure and run this project [check here](readme_configuration_guideline.md) 
You will find at above link step by step instructions with screenshots.


# How was this project developed?
- Run [get cli](https://pub.dev/packages/get_cli) command to create project in the required directory: `get create project`
- Create `main_view` by running this command: `get create page:main` and so on...

# Upcoming features:
1. iOS Flavor configuration for XCode
2. Local database integration
3. Login/Authentication page
4. Push notification
