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

| HTTP Verb | Parameter                  | Description                                                                                                                          |
| :-------- | :------------------------- | :----------------------------------------------------------------------------------------------------------------------------------- |
| GET       | `local={BOOL}`             | requires returned pitch events to be local                                                                                           |
| GET       | `national={BOOL}`          | requires returned pitch events to be national                                                                                        |
| GET       | `woman_founder={BOOL}`     | requires returned pitch events to target startups with a woman founder                                                               |
| GET       | `ethnic_founder={BOOL}`    | requires returned pitch events to target startups with a founder of ethnic background                                                |
| GET       | `sort_order={ATTRIBUTE}`   | sorts according to the following whitelisted attributes: "event_name", "event_start" (default), "event_end", "registration_deadline" |
| GET       | `limit={INT}`              | limits the number of responses                                                                                                       |


## Database Schema

Fields for the Company Profile data base:

| Field Name        | Storage Type | Description                                     |
| :---------------- | :----------- | :---------------------------------------------- |
| Personal Name     | String       | Person's Full name who downloaded the app       |
| Email             | String       | Email provided by user                          |
| Company Name      | String       | Name of the Startup Company                     |
| Industry          | String       | Industry that best describes their company      |
| Locale            | String       | Major market that best describes their location |
| Female Founder    | String       | Their company was founded by a female           |
| Ethnic Founder    | String       | Their founder was of ethnic background          |
| Capital Goal      | String       | Company's Capital Goal                          |
| Fundraising Stage | String       | Stage of their Fundraising                      |
