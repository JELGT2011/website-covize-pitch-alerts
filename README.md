# Covize Pitch Alerts Web App

## API

This app uses a standard REST architecture, but has a separate scope for three reasons:

* to allow calls without admin authentication
* to allow for slightly different filtering capabilities
* to default all requests to not include passed events

With that, the base url will be `covize-pitch-alerts.herokuapp.com/api/`

So an example GET request might look like this: `covize-pitch-alerts.herokuapp.com/api/pitch_events`

which would return a listing of all pitch events in JSON format.

For now, everything is passed in as a url parameter.  Here is a listing:

| HTTP Verb | Parameter                  | Description                                                                    |
| :-------- | :------------------------- | :----------------------------------------------------------------------------- |
| GET       | `local={BOOL}`             | requires returned pitch events to be local                                     |
| GET       | `national={BOOL}`          | requires returned pitch events to be national                                  |
| GET       | `woman_founder={BOOL}`     | requires returned pitch events to target startups with a woman founder         |
| GET       | `ethnic_founder={BOOL}`    | requires returned pitch events to target startups with a non-Caucasian founder |
| GET       | `limit={INT}`              | limits the number of responses                                                 |