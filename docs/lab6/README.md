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

`docs/lab6/coverage.png` captures the pytest coverage report in the provided environment. `behave` must be installed to generate `docs/lab6/behave_output.txt` — it was unavailable in the execution environment, so no fabricated green output is included.

## Push

Add the `lab6/` folder, `docs/lab6/` folder, and Git history to your own GitHub repository; replace this local repository's origin with your actual repository URL, then push your chosen branch. No remote push was performed here.
