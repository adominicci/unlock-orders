# Product Requirements Document (PRD)
## DST Unlock Orders Application

**Version:** 1.0.0  
**Last Updated:** 2024  
**Status:** Production

---

## 1. Executive Summary

The DST Unlock Orders application is a Flutter-based web application designed to enable authorized personnel to view, search, and unlock production orders that have been locked in the manufacturing system. The application supports operations across two production facilities: Canton and Freeport.

**Note:** This application was generated using FlutterFlow, a low-code Flutter development platform. While the Flutter project structure includes Android and iOS platform folders (standard FlutterFlow output), the application is deployed and used exclusively as a web application.

### 1.1 Problem Statement
Production orders can become locked in the system for various reasons (quality issues, production delays, etc.). Authorized personnel need a streamlined way to:
- View locked orders in production
- Search for specific orders
- Unlock orders when authorized
- Track order status across multiple production stages

### 1.2 Solution Overview
A web application built with Flutter that provides secure access to order management functionality through a simple, intuitive browser-based interface. The application is accessible via modern web browsers and provides a responsive design optimized for desktop and tablet use.

---

## 2. Product Goals

### 2.1 Primary Goals
- Enable quick access to locked production orders
- Provide secure authentication and authorization
- Support multi-facility operations (Canton and Freeport)
- Ensure real-time order status visibility
- Streamline the order unlock workflow

### 2.2 Success Metrics
- Average time to unlock an order < 30 seconds
- User authentication success rate > 99%
- Application uptime > 99.5%
- User satisfaction score > 4.5/5

---

## 3. User Personas

### 3.1 Primary User: Production Manager
- **Role:** Authorized personnel responsible for unlocking production orders
- **Needs:**
  - Quick access to locked orders
  - Ability to search by order number
  - Clear visibility of order status
  - Secure authentication
- **Pain Points:**
  - Time-consuming order lookup process
  - Difficulty tracking order status
  - Need for quick browser-based access

### 3.2 Secondary User: Production Supervisor
- **Role:** Supervisory staff who need to view order status
- **Needs:**
  - View-only access to order information
  - Search functionality
  - Status tracking across production stages

---

## 4. Functional Requirements

### 4.1 Authentication & Authorization

#### 4.1.1 Login
- **FR-1.1:** Users must authenticate using DAK username and 4-digit PIN
- **FR-1.2:** Application must validate credentials against backend API
- **FR-1.3:** Failed authentication attempts must display clear error messages
- **FR-1.4:** Successful login must persist user session
- **FR-1.5:** Application must remember username for subsequent logins
- **FR-1.6:** Default database connection is set to "Canton"

**Acceptance Criteria:**
- Login form validates username and PIN (4 digits)
- API call to `/loginUser` endpoint with username, pinNumber, and db parameters
- User data persisted in SharedPreferences
- Navigation to main screen upon successful authentication

#### 4.1.2 Session Management
- **FR-1.7:** Application must check for existing session on startup
- **FR-1.8:** Users must be able to logout
- **FR-1.9:** Session data must persist across app restarts

**Acceptance Criteria:**
- Start page checks for existing user session
- If session exists, navigate to UnlockOrders page
- If no session, navigate to Login page
- Logout clears user session and redirects to login

### 4.2 Order Management

#### 4.2.1 View Orders
- **FR-2.1:** Application must display orders in production with pagination
- **FR-2.2:** Orders must be displayed in a scrollable list
- **FR-2.3:** Each order card must display:
  - Order SO Number
  - Customer Name
  - Lock Reason
  - Production status for: Slit, Trim, Roll, Wrap, Parts, Soffit
  - Lock/Unlock status indicator
- **FR-2.4:** Orders must support infinite scroll pagination (10 items per page)
- **FR-2.5:** Application must support pull-to-refresh functionality

**Acceptance Criteria:**
- Orders fetched via API call to `viewOrdersForUnlock` endpoint
- Pagination implemented with offset/limit parameters
- Order cards display all required information
- Visual indicators show lock status (locked/unlocked icons)

#### 4.2.2 Search Orders
- **FR-2.6:** Users must be able to search orders by SO Number
- **FR-2.7:** Search must be performed in real-time on field submission
- **FR-2.8:** Search results must update the order list
- **FR-2.9:** Search must work independently for Canton and Freeport tabs

**Acceptance Criteria:**
- Search field accepts order SO number input
- Search triggers API call with `orderSoNumber` parameter
- Results filtered and displayed immediately
- Empty search shows all orders

#### 4.2.3 Unlock Orders
- **FR-2.10:** Authorized users must be able to unlock orders
- **FR-2.11:** Unlock action must require confirmation dialog
- **FR-2.12:** Unlock must update order status via API
- **FR-2.13:** Unlock must record:
  - Unlock authorization timestamp
  - User who unlocked the order
  - Order unlocked timestamp
- **FR-2.14:** Orders already unlocked must show appropriate message
- **FR-2.15:** Unlocked orders automatically re-lock after 2 hours

**Acceptance Criteria:**
- Lock icon button visible for locked orders
- Confirmation dialog appears before unlock
- API call to `updateTblOrders` with unlock parameters
- Order list refreshes after successful unlock
- Unlocked orders show unlock icon and message

### 4.3 Multi-Facility Support

#### 4.3.1 Facility Selection
- **FR-3.1:** Application must support two facilities: Canton and Freeport
- **FR-3.2:** Facility selection via tab interface
- **FR-3.3:** Each facility must have distinct color coding:
  - Canton: Primary theme color
  - Freeport: Green (#548235)
- **FR-3.4:** Orders must be filtered by selected facility database
- **FR-3.5:** Search must work independently per facility

**Acceptance Criteria:**
- Tab bar displays "Canton" and "Freeport" tabs
- Tab selection changes database parameter in API calls
- App bar color changes based on selected tab
- Order lists maintain separate state per facility

### 4.4 User Profile Management

#### 4.4.1 Update PIN
- **FR-4.1:** Users must be able to update their PIN number
- **FR-4.2:** PIN update must require 4-digit input
- **FR-4.3:** PIN update must be validated via API
- **FR-4.4:** Success/error feedback must be provided

**Acceptance Criteria:**
- Profile button opens bottom sheet modal
- PIN update form validates 4-digit input
- API call to `updatePinNumber` endpoint
- Success dialog confirms PIN update
- Error handling for failed updates

---

## 5. Non-Functional Requirements

### 5.1 Performance
- **NFR-1:** Application startup time < 3 seconds
- **NFR-2:** Order list load time < 2 seconds
- **NFR-3:** API response time < 1 second
- **NFR-4:** Smooth scrolling with 60 FPS

### 5.2 Security
- **NFR-5:** PIN numbers must be masked in UI
- **NFR-6:** API calls must use secure HTTPS
- **NFR-7:** User credentials must be stored securely (SharedPreferences)
- **NFR-8:** Session data must be encrypted

### 5.3 Usability
- **NFR-9:** Application must be intuitive for first-time users
- **NFR-10:** Error messages must be clear and actionable
- **NFR-11:** Loading states must be clearly indicated
- **NFR-12:** Application must be responsive and work across different browser window sizes

### 5.4 Compatibility
- **NFR-13:** Support modern web browsers:
  - Chrome (latest 2 versions)
  - Safari (latest 2 versions)
  - Firefox (latest 2 versions)
  - Edge (latest 2 versions)
- **NFR-14:** Responsive design optimized for desktop and tablet screen sizes
- **NFR-15:** Minimum browser viewport width: 320px
- **NFR-16:** Support for standard web technologies (HTML5, CSS3, JavaScript ES6+)

### 5.5 Reliability
- **NFR-17:** Application must handle network errors gracefully
- **NFR-18:** Offline mode detection with appropriate messaging
- **NFR-19:** API failure must not crash the application
- **NFR-20:** Data persistence must survive browser sessions (using localStorage/SharedPreferences)

---

## 6. User Interface Requirements

### 6.1 Login Screen
- DST logo prominently displayed
- "Welcome, please sign in" heading
- Username input field (DAK Username)
- PIN input field (4 digits, masked)
- Sign In button
- Error dialogs for authentication failures

### 6.2 Main Screen (Unlock Orders)
- App bar with:
  - "Unlock Orders" title
  - Refresh button
  - Profile button
- Tab bar for Canton/Freeport selection
- Search field (per tab)
- Scrollable order list with:
  - Order cards showing:
    - Order SO Number (large, prominent)
    - Customer Name
    - Lock Reason
    - Production status labels and values
    - Lock/Unlock icon button
- Pull-to-refresh indicator
- Loading spinners for pagination

### 6.3 Order Card Layout
- Left section (80% width):
  - Order SO Number (title)
  - Customer Name
  - Lock Reason
  - Production status grid:
    - Labels: Slit, Trim, Roll, Wrap, Parts, Soffit
    - Values: Status for each stage
- Right section (20% width):
  - Lock/Unlock icon button
  - Visual state: Locked (lock icon) or Unlocked (unlock icon)

### 6.4 Profile Modal
- Bottom sheet modal
- "Update Pin Number" heading
- Username display
- PIN input field
- Update Pin Number button
- Logout button

---

## 7. Data Requirements

### 7.1 User Data
- UserID (integer)
- UserName (string)
- UserTypeID (integer)
- PinNumber (string, 4 digits)

### 7.2 Order Data
- OrderNumber (integer)
- OrderSONumber (string)
- CustomerName (string)
- LockReason (string)
- OrderStatus (string)
- Production Status Fields:
  - OrderSlitterStatus
  - OrderTrimStatus
  - OrderRollStatus
  - OrderWrapStatus
  - OrderPartStatus
  - OrderSoffitStatus
- UnlockAuthorize (boolean)
- UnlockAuthorizeTS (timestamp)
- OrderUnlocked (boolean)
- OrderUnlockedBy (string)
- OrderDate (date)
- ProductionDate (date)
- Additional metadata fields

### 7.3 API Endpoints
- `POST /loginUser` - User authentication
- `GET /viewOrdersForUnlock` - Fetch orders for unlock
- `PUT /updateTblOrders` - Update order unlock status
- `PUT /updatePinNumber` - Update user PIN

---

## 8. Business Rules

### 8.1 Order Unlocking
- Only orders with `unlockAuthorize == false` can be unlocked
- Orders with `lockReason == 'Not Locked'` cannot be unlocked (already unlocked)
- Unlocking an order requires confirmation
- Unlocked orders automatically re-lock after 2 hours
- Unlock action records the user who performed the unlock

### 8.2 Authentication
- Username is case-sensitive
- PIN must be exactly 4 digits
- Failed authentication shows error message
- Username is remembered for convenience

### 8.3 Facility Selection
- Default facility is Canton
- Facility selection persists during session
- Each facility maintains separate order lists
- Search is scoped to selected facility

---

## 9. Out of Scope

The following features are explicitly out of scope for v1.0:
- Order creation or editing
- Order history/audit trail beyond unlock records
- Push notifications
- Multi-language support
- Advanced filtering beyond SO number search
- Order export functionality
- User role management
- Admin dashboard

---

## 10. Future Enhancements

### 10.1 Potential Features (Post-v1.0)
- Order filtering by customer, date range, status
- Order details view with full information
- Batch unlock operations
- Order unlock history/audit log
- Browser notifications for new locked orders
- Dark mode support
- Advanced analytics and reporting
- Keyboard shortcuts for power users
- Export functionality (CSV/Excel)

---

## 11. Dependencies

### 11.1 External Services
- API Flow backend service (`https://gw.apiflow.online/api/...`)
- Database connections (Canton and Freeport)

### 11.2 Third-Party Libraries
- Flutter SDK (>=3.0.0 <4.0.0) - Compiled to JavaScript for web deployment
- Provider (state management)
- GoRouter (navigation)
- HTTP (API calls)
- SharedPreferences (local storage - uses browser localStorage on web)
- Infinite Scroll Pagination
- Google Fonts (Roboto)
- Font Awesome Icons

### 11.3 Development Platform
- **FlutterFlow:** This application was generated using FlutterFlow, which provides:
  - Visual UI builder
  - Automatic code generation
  - Standard Flutter project structure (including unused Android/iOS folders)
  - Pre-configured state management and navigation patterns

---

## 12. Assumptions

1. Users have valid DAK usernames and PINs
2. Backend API is always available and responsive
3. Network connectivity is generally available
4. Users have access to modern web browsers
5. Users understand basic web application navigation
6. Production orders follow standard naming conventions
7. Two-hour auto-lock timer is managed by backend system
8. Application is accessed primarily from desktop or tablet devices
9. Browser JavaScript is enabled
10. Users have stable internet connection for API calls

---

## 13. Risks & Mitigations

### 13.1 Technical Risks
- **Risk:** API downtime affects application functionality
  - **Mitigation:** Implement error handling and user-friendly error messages
  
- **Risk:** Large order lists impact performance
  - **Mitigation:** Implement pagination and lazy loading

### 13.2 Security Risks
- **Risk:** PIN stored in plain text
  - **Mitigation:** Use secure storage mechanisms, consider encryption

- **Risk:** Session hijacking
  - **Mitigation:** Implement secure session management, token expiration

### 13.3 User Experience Risks
- **Risk:** Confusion between Canton and Freeport tabs
  - **Mitigation:** Clear visual differentiation, color coding

---

## 14. Success Criteria

The application will be considered successful if:
1. Users can authenticate and access the application within 30 seconds
2. Order search returns results within 2 seconds
3. Order unlock process completes within 30 seconds
4. Application is stable with <1% crash rate
5. User satisfaction score > 4.5/5
6. 95% of users can complete unlock workflow without assistance

---

## 15. Appendix

### 15.1 Glossary
- **DAK:** Data Access Key (username system)
- **SO Number:** Sales Order Number
- **PIN:** Personal Identification Number (4-digit)
- **Canton:** Production facility location
- **Freeport:** Production facility location
- **Lock Reason:** Explanation for why order is locked
- **Production Status:** Status of order through various production stages

### 15.2 References
- Flutter Documentation: https://flutter.dev
- FlutterFlow Documentation: https://docs.flutterflow.io
- Flutter Web Deployment: https://docs.flutter.dev/deployment/web
- API Flow Documentation: Internal
- DST Production System: Internal

---

**Document Owner:** Product Team  
**Review Cycle:** Quarterly  
**Next Review Date:** TBD

