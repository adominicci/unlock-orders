# Bug Solutions & Fixes

This document tracks bugs found and their solutions for the DST Unlock Orders project.

## Deprecated Color.value Usage

**Date Fixed:** December 11, 2025  
**Severity:** High  
**Status:** ✅ Fixed

### Problem
The deprecated `.value` property on Flutter `Color` objects was being used in `app_state.dart`, which will break in future Flutter versions.

### Location
- File: `lib/app_state.dart`
- Line: 71
- Code: `prefs.setInt('ff_tabColorSelected', value.value);`

### Root Cause
Legacy API from older Flutter versions that has been deprecated in favor of explicit conversion methods.

### Solution
Replace `.value` with `.toARGB32()` method:

```dart
// Before (deprecated)
prefs.setInt('ff_tabColorSelected', value.value);

// After (correct)
prefs.setInt('ff_tabColorSelected', value.toARGB32());
```

### Prevention
- Enabled comprehensive linting rules in `analysis_options.yaml`
- The `deprecated_member_use` lint rule will catch these issues going forward
- Regular `flutter analyze` runs will detect deprecated API usage

### Related Issues
None

---

## Template for Future Bug Fixes

```markdown
## [Bug Title]

**Date Fixed:** [Date]  
**Severity:** [Low/Medium/High/Critical]  
**Status:** [Fixed/In Progress/Needs Review]

### Problem
[Describe the bug and its symptoms]

### Location
- File: [path/to/file]
- Line: [line number]
- Code: [problematic code]

### Root Cause
[Explain why the bug occurred]

### Solution
[Describe the fix and show code examples]

### Prevention
[How to prevent this bug from happening again]

### Related Issues
[Link to related bugs or tickets]
```
