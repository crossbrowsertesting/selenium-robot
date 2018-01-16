## Selenium 2 Robot and CBT

To get started, clone this repository. You'll need to run the following command to ensure you have all of the required dependencies:

```
pip install robotframework robotframework-pabot
```

Before executing your tests, ensure that you've corrected your username and authorizaton key in tests/login_test.robot. To execute your tests navigate to the root directory of this project and run:

```
pabot --outputdir reports suites/*.robot
```

The command to run the pabot test with valueset.dat would be

```
pabot --pabotlib --resourcefile valueset.dat --outputdir reports suites/pabot_suite.robot
```

If you have any trouble, don't hesitate to reach out to us [here](mailto:support@crossbrowsertesting.com). 
