🌦️ Weather App
**A modern weather forecasting application** built with Flutter, using Clean Architecture, MVVM, BLoC, and Singleton principles to ensure **scalability**, **testability**, and **maintainability**.

## 📱 Features

- 📍 Real-time weather by current location (via GPS)
- 📊 Interactive UI with animation, loading indicators, and bottom sheet display
- 🌐 Multilingual support (English, Vietnamese)

## 🧠 Technical Overview

### 🏗 Architecture

The application follows the **Clean Architecture** approach by dividing the codebase into three distinct layers:

1. **Presentation Layer** – Handles UI and user interaction (e.g., screens, widgets).
2. **Domain Layer** – Contains business logic and use cases.
3. **Data Layer** – Handles data sources (API, local storage, etc.).

### 📐 MVVM Pattern

The app implements the **MVVM (Model-View-ViewModel)** architectural pattern to enhance modularity and testing:

- **Model**: Represents core data entities (e.g., `DailyForecastEntity`).
- **View**: Flutter widgets responsible for rendering UI.
- **ViewModel**: Manages view logic and state, exposes reactive data to the view (e.g., using `Provider`).

Benefits:

- ✅ Separation of concerns between UI and logic
- ✅ Easier testing and mocking of business logic
- ✅ Reactive UI updates


### 🔄 Singleton Pattern

Singletons are used to manage **shared services** across the app efficiently:

- 🔌 **HTTP Client** (e.g., using `Dio`)
- 🧭 **Location Service**
- ⚙️ **Configuration Managers**

Benefits:

- ✅ One instance per service during app lifecycle
- ✅ Efficient memory use and performance
- ✅ Simplified mocking in tests


### 🧠 State Management: BLoC (Business Logic Component)

State management is handled using the **BLoC pattern** to ensure consistent and reactive data flow between UI and logic.

#### 🔄 Flow

1. **Events** – Triggered by user actions (e.g., refreshing weather).
2. **BLoC** – Processes events and performs logic (e.g., fetch data).
3. **States** – Emitted to update UI accordingly.

#### 📦 Libraries Used

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc): Simplifies reactive state management using BLoC and Cubit.
- [`equatable`](https://pub.dev/packages/equatable): For value-based equality of events and states.

Benefits:

- ✅ Unidirectional data flow
- ✅ High testability
- ✅ Loose coupling between UI and logic


## 🔧 Libraries & Frameworks

| Library           | Purpose                                        |
|------------------|------------------------------------------------|
| **Dio**          | API calls with interceptors and error handling |
| **flutter_bloc** | State management using BLoC/Cubit              |
| **Provider**     | Lightweight dependency injection               |
| **GetIt**        | Service locator                                |
| **injectable**   | Code generation for DI                         |
| **Intl**         | Date/time formatting and localization          |
| **Geolocator**   | Access to device’s GPS coordinates             |

---

## 🌍 API & Data Handling

- Weather data is fetched from [OpenWeatherMap API](https://api.openweathermap.org).
- JSON responses are mapped into domain models and exposed via ViewModels.
- Timestamps (`dt`) are converted into human-readable formats using Dart’s `DateTime.fromMillisecondsSinceEpoch`.



