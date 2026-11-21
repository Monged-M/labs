Feature: QR attendance check-in
  As a university instructor
  I want students to check in using a session QR code
  So that attendance is recorded accurately

  Scenario: Record attendance using a valid session QR code
    Given a student is enrolled in the course
    And the instructor has opened an attendance session
    When the student scans the valid QR code for that session
    Then the student is marked present for the session

  Scenario: Refuse attendance for an expired QR code
    Given a student is enrolled in the course
    And the attendance session has expired
    When the student scans the expired QR code
    Then attendance is refused with "QR code expired"
    And no attendance record is created

  Scenario: Prevent duplicate attendance for the same session
    Given a student is enrolled in the course
    And the student has already checked in to an active session
    When the student scans the same session QR code again
    Then the system reports "Attendance already recorded"
    And exactly one attendance record exists for that student and session
