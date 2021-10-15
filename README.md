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

## How to configure and run this project?

<b>Step 1:</b> First of all click "Add/Edit Configurations" as like image 1:

<img align="center" alt="1" src="repo_data/flutter_getx_template_1.png" />

<b>Step 2:</b> Choose "Flutter" from configuration list and select your Dart entrypoint path according
to your flavor then give a name and allow dart support for this project. See on Image 2, 3 and 4:

<img align="center" alt="2" src="repo_data/flutter_getx_template_2.png" />

<img align="center" alt="2" src="https://user-images.githubusercontent.com/3769029/137329967-6a2421ce-98c7-4f42-9393-8817b2607678.png" />

![2021-10-14_19-37](https://user-images.githubusercontent.com/3769029/137330462-303463b1-6b00-4755-9b96-a04d4546df4d.png)

![2021-10-14_19-38](https://user-images.githubusercontent.com/3769029/137330499-ff822737-943a-493d-932e-09eb8afa9414.png)

N.B: In this step you may need to setup your dart sdk path. If you get warned for 
"dart sdk not found in specified location" then just click on "fix" and select your dart sdk path.


# How was this project developed?
- Run [get cli](https://pub.dev/packages/get_cli) command to create project in the required directory: `get create project`
- Create `main_view` by running this command: `get create page:main` and so on...

# Upcoming features:
1. iOS Flavor configuration for XCode
2. Local database integration
3. Login/Authentication page
4. Push notification
