# Lab 6 submission — TDD, BDD and refactoring

- `lab6/registration.py` and `lab6/tests/test_registration.py`: five TDD checks, including drop of an unknown course.
- `lab6/features/registration.feature` and `lab6/features/steps/registration_steps.py`: original scenarios and the drop scenario.
- `lab6/legacy_invoice.py`, `lab6/invoice.py`, `lab6/tests/test_invoice_characterization.py`: legacy baseline, SOLID policies, injected writer and sibling-discount test.
- `docs/lab6/smells.md`: six code smells and principles.
- `docs/lab6/team_story.feature`: three QR-attendance Gherkin scenarios.
- `docs/lab6/coverage_answer.md`: required one-sentence coverage answer.
- `docs/lab6/git_log.txt`: local Git TDD history; it is not evidence of a remote GitHub push.

## Run locally

```bash
cd lab6
python -m pip install pytest pytest-cov behave ruff
python -m pytest -q
python -m pytest --cov=registration --cov-report=term-missing
python -m behave
```

  Then the student has 3 registered hours               # features/steps/registration_steps.py:31 0.000s
    Then the student has 3 registered hours               # features/steps/registration_steps.py:31
    And the student has 15 registered hours                         # features/steps/registration_steps.py:31 0.000s
    And the student has 15 registered hours                         # features/steps/registration_steps.py:31
    Then the registration is refused with "already registered" # features/steps/registration_steps.py:36 0.000s
    Then the registration is refused with "already registered" # features/steps/registration_steps.py:36
    Then the result is "accepted"                             # features/steps/registration_steps.py:41 0.000s
    Then the result is "accepted"                             # features/steps/registration_steps.py:41
    Then the result is "accepted"                             # features/steps/registration_steps.py:41 0.000s
    Then the result is "accepted"                             # features/steps/registration_steps.py:41
    Then the result is "refused"                              # features/steps/registration_steps.py:41 0.000s
    Then the result is "refused"                              # features/steps/registration_steps.py:41
    Then the student has 0 registered hours                    # features/steps/registration_steps.py:31 0.000s
    Then the student has 0 registered hours                    # features/steps/registration_steps.py:31
1 feature passed, 0 failed, 0 skipped
7 scenarios passed, 0 failed, 0 skipped
28 steps passed, 0 failed, 0 skipped
Took 0min 0.012s

