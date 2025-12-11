# Architecture Document
## DST Unlock Orders Application

**Version:** 1.0.0  
**Last Updated:** 2024  
**Status:** Production

---

## 1. Overview

This document describes the architecture of the DST Unlock Orders Flutter web application. The application follows a layered architecture pattern with clear separation of concerns, utilizing Flutter's widget-based UI framework and modern state management practices.

**Note:** This application was generated using FlutterFlow, a low-code Flutter development platform. While the Flutter project structure includes Android and iOS platform folders (standard FlutterFlow output), the application is deployed and used exclusively as a web application. The codebase maintains FlutterFlow's standard conventions and structure.

### 1.1 Architecture Principles
- **Separation of Concerns:** Clear boundaries between UI, business logic, and data layers
- **Single Responsibility:** Each component has a single, well-defined purpose
- **Dependency Injection:** Loose coupling through dependency injection
- **State Management:** Centralized state management using Provider pattern
- **API Abstraction:** Abstracted API layer for backend communication

---

## 2. System Architecture

### 2.1 High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                      Presentation Layer                       │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │   Login      │  │ Unlock Orders│  │  Home Page   │      │
│  │   Widget     │  │   Widget     │  │   Widget     │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│                    State Management Layer                     │
│  ┌──────────────────────────────────────────────────────┐  │
│  │              FFAppState (Provider)                    │  │
│  │  - User Session Management                            │  │
│  │  - Tab Color State                                    │  │
│  │  - Persistent State (SharedPreferences)              │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│                      Business Logic Layer                     │
│  ┌──────────────────────────────────────────────────────┐  │
│  │              Page Models (MVVM Pattern)              │  │
│  │  - LoginModel                                         │  │
│  │  - UnlockOrdersModel                                  │  │
│  │  - HomePageModel                                      │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│                        Data Layer                             │
│  ┌──────────────────┐         ┌──────────────────┐        │
│  │   API Manager    │────────▶│   API Calls      │        │
│  │   (Singleton)    │         │   (Endpoints)    │        │
│  └──────────────────┘         └──────────────────┘        │
│           │                              │                   │
│           ▼                              ▼                   │
│  ┌──────────────────┐         ┌──────────────────┐      │
│  │  Schema/Structs  │         │ SharedPreferences │      │
│  │  (Data Models)   │         │  (Local Storage) │      │
│  └──────────────────┘         └──────────────────┘      │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│                    External Services                          │
│  ┌──────────────────────────────────────────────────────┐  │
│  │         API Flow Backend (REST API)                  │  │
│  │  - Authentication                                     │  │
│  │  - Order Management                                   │  │
│  │  - User Management                                    │  │
│  └──────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────┘
```

---

## 3. Layer Details

### 3.1 Presentation Layer

The presentation layer consists of Flutter widgets organized by page/feature.

#### 3.1.1 Page Structure
Each page follows a consistent structure:
- **Widget File:** `*_widget.dart` - Contains the UI implementation
- **Model File:** `*_model.dart` - Contains business logic and state

#### 3.1.2 Key Pages

**Login Page** (`lib/pages/login/login_widget.dart`)
- Purpose: User authentication
- Components:
  - DST logo display
  - Username input field
  - PIN input field (4-digit, masked)
  - Sign In button
  - Error dialogs

**Unlock Orders Page** (`lib/pages/unlock_orders/unlock_orders_widget.dart`)
- Purpose: Main order management interface
- Components:
  - Tab bar (Canton/Freeport)
  - Search field
  - Order list with pagination
  - Order cards with unlock functionality
  - Refresh and profile buttons

**Home Page** (`lib/pages/home_page/home_page_widget.dart`)
- Purpose: Alternative order view (simplified)
- Components:
  - Search functionality
  - Order list display

**Start Page** (`lib/pages/start/start_widget.dart`)
- Purpose: Initial routing logic
- Components:
  - Splash screen logic
  - Session check and routing

#### 3.1.3 Shared Components

**Update Password Widget** (`lib/components/update_password/update_password_widget.dart`)
- Purpose: PIN update functionality
- Usage: Modal bottom sheet
- Components:
  - PIN input field
  - Update button
  - Logout button

### 3.2 State Management Layer

#### 3.2.1 FFAppState (Singleton Pattern)

**Location:** `lib/app_state.dart`

**Responsibilities:**
- Global application state management
- User session persistence
- Tab color state
- Username persistence

**Key Properties:**
```dart
- user: UsersStruct          // Current logged-in user
- username: String           // Persisted username
- tabColorSelected: Color    // Selected tab color (Canton/Freeport)
- prefs: SharedPreferences   // Local storage instance
```

**State Persistence:**
- Uses `SharedPreferences` for local storage
- On web: Utilizes browser's localStorage API
- Persists user data, username, and tab color
- Initializes persisted state on application startup
- Data survives browser sessions and page refreshes

**Usage Pattern:**
```dart
// Access state
context.watch<FFAppState>()

// Update state
FFAppState().user = newUser;
FFAppState().username = newUsername;
```

#### 3.2.2 Page Models (MVVM Pattern)

Each page has an associated model that:
- Manages page-specific state
- Handles business logic
- Manages API call state
- Controls pagination controllers

**Example:** `UnlockOrdersModel`
- Manages search text controllers
- Handles pagination for Canton and Freeport lists
- Stores API call responses
- Manages tab controller state

### 3.3 Business Logic Layer

#### 3.3.1 Custom Functions

**Location:** `lib/flutter_flow/custom_functions.dart`

**Purpose:** Reusable utility functions

**Key Functions:**
- `getDateTime()` - Returns current timestamp for API calls

#### 3.3.2 Navigation

**Location:** `lib/flutter_flow/nav/nav.dart`

**Framework:** GoRouter

**Routes:**
- `/` - Start page (splash/routing)
- `/login` - Login page
- `/unlockOrders` - Main unlock orders page
- `/homePage` - Home page

**Navigation Methods:**
- `context.pushNamed(routeName)` - Navigate to route
- `context.safePop()` - Safe pop with fallback
- `context.go(path)` - Navigate and replace stack

### 3.4 Data Layer

#### 3.4.1 API Manager

**Location:** `lib/backend/api_requests/api_manager.dart`

**Pattern:** Singleton

**Responsibilities:**
- HTTP request handling
- Response parsing
- Error handling
- Request caching (optional)
- Authentication token management

**Key Classes:**
- `ApiManager` - Main API manager singleton
- `ApiCallOptions` - Request configuration
- `ApiCallResponse` - Response wrapper

**Request Types Supported:**
- GET
- POST
- PUT
- PATCH
- DELETE

**Body Types Supported:**
- JSON
- Text
- Form URL Encoded
- Multipart

#### 3.4.2 API Calls

**Location:** `lib/backend/api_requests/api_calls.dart`

**Structure:** Organized by API group

**API Groups:**

1. **UnlockOrdersApiFlowAPIGroup**
   - Base URL: `https://gw.apiflow.online/api/9ee5de36ed61483e8fc12dfd202e56f5`
   - Authentication: Bearer token
   - Endpoints:
     - `ListTblOrdersDetailCall` - List order details
     - `CreateNewTblOrdersDetailCall` - Create order detail
     - `GetTblOrdersDetailByIDCall` - Get order detail by ID
     - `UpdateTblOrdersDetailCall` - Update order detail
     - `ListTblOrdersCall` - List orders
     - `CreateNewTblOrdersCall` - Create order
     - `GetTblOrdersByIDCall` - Get order by ID
     - `UpdateTblOrdersCall` - Update order (used for unlock)
     - `ListDboVwProductionAltCall` - List production view
     - `ListDboVwUnlockOrderAPICall` - List unlock orders view

2. **UnlockOrdersGroup**
   - Base URL: Dynamic based on database parameter
   - Endpoints:
     - `loginUserCall` - User authentication
     - `viewOrdersForUnlockCall` - Fetch orders for unlock
     - `updatePinNumberCall` - Update user PIN

**API Call Pattern:**
```dart
final response = await UnlockOrdersGroup.loginUserCall.call(
  username: username,
  pinNumber: pin,
  db: 'Canton',
);
```

#### 3.4.3 Data Models (Schema/Structs)

**Location:** `lib/backend/schema/structs/`

**Pattern:** Struct-based data models

**Key Models:**

**UsersStruct** (`users_struct.dart`)
```dart
- userID: int
- userName: String
- userTypeID: int
- pinNumber: String
```

**OrdersInProductionStruct** (`orders_in_production_struct.dart`)
```dart
- orderNumber: int
- orderSONumber: String
- customerName: String
- lockReason: String
- orderStatus: String
- orderSlitterStatus: String
- orderTrimStatus: String
- orderRollStatus: String
- orderWrapStatus: String
- orderPartStatus: String
- orderSoffitStatus: String
- unlockAuthorize: bool
- unlockAuthorizeTS: String
- orderUnlocked: bool
- orderUnlockedBy: String
- orderDate: String
- productionDate: String
// ... additional fields
```

**Model Features:**
- Serialization/Deserialization support
- Null safety
- Type casting utilities
- Map conversion methods
- Equality comparison

#### 3.4.4 Local Storage

**Technology:** SharedPreferences

**Usage:**
- User session persistence
- Username persistence
- Tab color preference
- App state restoration

**Storage Keys:**
- `ff_user` - Serialized user object
- `ff_username` - Username string
- `ff_tabColorSelected` - Tab color integer value

---

## 4. Data Flow

### 4.1 Authentication Flow

```
User Input (Username + PIN)
    │
    ▼
LoginWidget
    │
    ▼
LoginModel (validates input)
    │
    ▼
API Call: UnlockOrdersGroup.loginUserCall
    │
    ▼
ApiManager (HTTP request)
    │
    ▼
Backend API
    │
    ▼
Response (UsersStruct)
    │
    ▼
FFAppState (persist user)
    │
    ▼
Navigation: UnlockOrdersWidget
```

### 4.2 Order List Flow

```
UnlockOrdersWidget (initialization)
    │
    ▼
UnlockOrdersModel (setup pagination)
    │
    ▼
API Call: UnlockOrdersGroup.viewOrdersForUnlockCall
    │
    ▼
ApiManager (HTTP GET request)
    │
    ▼
Backend API (with pagination params)
    │
    ▼
Response (List<OrdersInProductionStruct>)
    │
    ▼
PaginationController (update list)
    │
    ▼
UI Update (render order cards)
```

### 4.3 Unlock Order Flow

```
User clicks unlock button
    │
    ▼
Confirmation dialog
    │
    ▼
User confirms
    │
    ▼
API Call: UnlockOrdersApiFlowAPIGroup.updateTblOrdersCall
    │
    ▼
ApiManager (HTTP PUT request)
    │
    ▼
Backend API (update order)
    │
    ▼
Response (success/error)
    │
    ▼
Refresh order list
    │
    ▼
UI Update (lock icon changes)
```

---

## 5. Key Design Patterns

### 5.1 Singleton Pattern
- **FFAppState:** Global application state
- **ApiManager:** API request manager
- **AppStateNotifier:** Navigation state management

### 5.2 Provider Pattern
- State management using Provider package
- `ChangeNotifierProvider` for FFAppState
- `context.watch<FFAppState>()` for reactive updates

### 5.3 MVVM Pattern
- **Model:** Page models (`*_model.dart`)
- **View:** Widget files (`*_widget.dart`)
- **ViewModel:** Business logic in models

### 5.4 Repository Pattern (Implicit)
- API calls abstracted through API groups
- Data models separate from API implementation
- Clear separation between data source and UI

### 5.5 Factory Pattern
- Model creation: `createModel(context, () => Model())`
- Struct creation: `createUsersStruct()`, `createOrdersInProductionStruct()`

---

## 6. Technology Stack

### 6.1 Core Framework
- **Flutter SDK:** >=3.0.0 <4.0.0
- **Dart:** Latest stable version
- **Platform Support:** Web only (compiled to JavaScript)
- **Development Platform:** FlutterFlow (low-code Flutter development tool)
- **Deployment Target:** Modern web browsers

### 6.2 State Management
- **Provider:** 6.1.5 - State management and dependency injection

### 6.3 Navigation
- **GoRouter:** 12.1.3 - Declarative routing

### 6.4 Networking
- **HTTP:** 1.4.0 - HTTP client for API calls

### 6.5 Local Storage
- **SharedPreferences:** 2.5.3 - Key-value storage
  - On web: Uses browser's localStorage API
  - Provides persistent storage across browser sessions

### 6.6 UI Components
- **Google Fonts:** 6.1.0 - Roboto font family
- **Font Awesome:** 10.7.0 - Icons
- **Flutter SpinKit:** 5.2.0 - Loading indicators

### 6.7 Pagination
- **Infinite Scroll Pagination:** 4.0.0 - List pagination

### 6.8 Utilities
- **Equatable:** 2.0.7 - Value equality
- **Collection:** 1.19.1 - Collection utilities
- **Intl:** 0.20.2 - Internationalization

---

## 7. File Structure

**Note:** This project structure follows FlutterFlow's standard conventions. The `android/` and `ios/` folders are present (standard FlutterFlow output) but are not used since this is a web-only application.

```
lib/
├── app_constants.dart              # App-wide constants
├── app_state.dart                  # Global state management
├── main.dart                       # Application entry point
├── index.dart                      # Page exports
│
├── backend/
│   ├── api_requests/
│   │   ├── api_manager.dart        # API request manager
│   │   ├── api_calls.dart          # API endpoint definitions
│   │   └── get_streamed_response.dart
│   └── schema/
│       ├── structs/
│       │   ├── index.dart
│       │   ├── users_struct.dart
│       │   ├── orders_in_production_struct.dart
│       │   └── orders_in_production_freeport_struct.dart
│       └── util/
│           └── schema_util.dart
│
├── components/
│   └── update_password/
│       ├── update_password_model.dart
│       └── update_password_widget.dart
│
├── flutter_flow/                   # FlutterFlow-generated utilities
│   ├── custom_functions.dart      # Utility functions
│   ├── flutter_flow_theme.dart    # Theme configuration
│   ├── flutter_flow_util.dart     # Utility functions
│   ├── flutter_flow_widgets.dart  # Custom widgets
│   └── nav/
│       ├── nav.dart                # Navigation configuration
│       └── serialization_util.dart
│
└── pages/
    ├── home_page/
    │   ├── home_page_model.dart
    │   └── home_page_widget.dart
    ├── login/
    │   ├── login_model.dart
    │   └── login_widget.dart
    ├── start/
    │   ├── start_model.dart
    │   └── start_widget.dart
    └── unlock_orders/
        ├── unlock_orders_model.dart
        └── unlock_orders_widget.dart

# Unused platform folders (FlutterFlow default output)
android/                            # Not used - web-only deployment
ios/                                # Not used - web-only deployment
web/                                # Web-specific configuration and assets
```

---

## 8. Configuration

### 8.1 App Constants

**Location:** `lib/app_constants.dart`

**Constants:**
- `cantonColor` - Color for Canton facility
- `freeportColor` - Color for Freeport facility
- `cantonDb` - Database name for Canton
- `freeportDb` - Database name for Freeport

### 8.2 Theme Configuration

**Location:** `lib/flutter_flow/flutter_flow_theme.dart`

**Features:**
- Light and dark theme support
- Custom color schemes
- Typography configuration
- Theme persistence

### 8.3 API Configuration

**Base URLs:**
- API Flow: `https://gw.apiflow.online/api/9ee5de36ed61483e8fc12dfd202e56f5`
- Authentication: Bearer token in headers

**Database Parameters:**
- Canton: `'Canton'`
- Freeport: `'Freeport'`

---

## 9. Error Handling

### 9.1 API Error Handling

**Pattern:**
```dart
final response = await apiCall.call(...);
if (response.succeeded) {
  // Handle success
} else {
  // Show error dialog
  await showDialog(...);
}
```

**Error Types:**
- Network errors
- Authentication errors
- API errors (non-2xx status codes)
- Parsing errors

### 9.2 User Feedback

**Methods:**
- Alert dialogs for errors
- Loading indicators during API calls
- Success messages for operations
- Validation feedback in forms

---

## 10. Security Considerations

### 10.1 Authentication
- PIN numbers masked in UI
- Credentials validated server-side
- Session persistence with secure storage

### 10.2 API Security
- HTTPS for all API calls
- Bearer token authentication
- Secure token storage

### 10.3 Data Protection
- User data stored in browser localStorage (via SharedPreferences)
- No sensitive data in logs
- Secure session management
- HTTPS required for production deployment
- Consider encryption for sensitive data in localStorage

---

## 11. Performance Optimizations

### 11.1 List Performance
- Pagination (10 items per page)
- Lazy loading with infinite scroll
- Efficient widget rebuilding

### 11.2 API Optimization
- Request caching (optional)
- Pagination to limit data transfer
- Efficient serialization

### 11.3 UI Performance
- Efficient widget tree
- Minimal rebuilds
- Optimized image loading
- Web-specific optimizations:
  - Code splitting for faster initial load
  - Lazy loading of routes
  - Optimized asset delivery

---

## 12. Testing Strategy

### 12.1 Unit Testing
- Model logic testing
- API call testing
- Data model serialization testing

### 12.2 Widget Testing
- UI component testing
- User interaction testing
- Navigation testing

### 12.3 Integration Testing
- End-to-end workflows
- API integration testing
- State management testing

---

## 13. Deployment

### 13.1 Web Deployment

**Build Process:**
```bash
flutter build web --release
```

**Output:**
- Compiled JavaScript bundle
- HTML entry point (`index.html`)
- Static assets (images, fonts, etc.)
- Web-optimized Flutter engine

**Deployment Targets:**
- Static web hosting (e.g., Firebase Hosting, Netlify, AWS S3)
- Web server (e.g., Nginx, Apache)
- CDN for asset delivery

**Web Configuration:**
- Responsive design for desktop and tablet
- Browser compatibility: Modern browsers (Chrome, Safari, Firefox, Edge)
- URL routing: Uses path-based routing (configured in `main.dart`)
- Asset optimization: Images and fonts optimized for web

**Note:** While the project includes `android/` and `ios/` folders (standard FlutterFlow output), these are not used for deployment. The application is built and deployed exclusively as a web application.

### 13.2 Environment Configuration
- API endpoints configurable
- Environment-specific constants
- Build variants for dev/staging/prod
- Web-specific optimizations (tree-shaking, code splitting)

### 13.3 FlutterFlow Considerations
- Code generated from FlutterFlow visual builder
- Standard FlutterFlow project structure maintained
- Custom code can be added but may be overwritten by FlutterFlow regenerations
- Best practice: Document custom modifications for FlutterFlow compatibility

---

## 14. Future Architecture Considerations

### 14.1 Potential Improvements
- **Repository Pattern:** Explicit repository layer for data access
- **Dependency Injection:** More robust DI framework
- **State Management:** Consider Riverpod or Bloc for complex state
- **Caching:** Implement offline-first caching strategy using IndexedDB
- **Error Handling:** Centralized error handling service
- **Logging:** Structured logging framework
- **Analytics:** User analytics integration (e.g., Google Analytics)
- **PWA Support:** Progressive Web App features for offline capability
- **Service Workers:** Background sync and caching strategies

### 14.2 Scalability
- Modular architecture for feature additions
- Plugin architecture for extensibility
- Code splitting for better web performance
- Lazy loading of routes and components
- CDN integration for static assets

### 14.3 FlutterFlow Considerations
- Maintain compatibility with FlutterFlow regeneration
- Document custom code additions
- Consider FlutterFlow's limitations when planning features
- Evaluate migration path if moving away from FlutterFlow

---

## 15. Glossary

- **MVVM:** Model-View-ViewModel architecture pattern
- **Singleton:** Design pattern ensuring single instance
- **Provider:** Flutter state management package
- **GoRouter:** Declarative routing package for Flutter
- **Struct:** Data structure/model class
- **Pagination:** Loading data in chunks/pages
- **SharedPreferences:** Flutter local storage mechanism (uses localStorage on web)
- **FlutterFlow:** Low-code Flutter development platform used to generate this application
- **Flutter Web:** Flutter's web compilation target that converts Dart code to JavaScript

---

**Document Owner:** Engineering Team  
**Review Cycle:** Quarterly  
**Next Review Date:** TBD

