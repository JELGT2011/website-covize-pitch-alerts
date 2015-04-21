# Covize Pitch Alerts Web App

## Database Schema

Fields for the User table:

| Field Name            | Storage Type | Description                                     |
| :-------------------- | :----------- | :---------------------------------------------- |
| personal_name         | string       | Person's Full name who downloaded the app       |
| email                 | string       | Email provided by user                          |
| company_name          | string       | Name of the Startup Company                     |
| industry              | string       | Industry that best describes their company      |
| locale                | string       | Major market that best describes their location |
| female_founder        | string       | Their company was founded by a female           |
| ethnic_founder        | string       | Their founder was of ethnic background          |
| capital_goal          | string       | Company's Capital Goal                          |
| fundraising_stage     | string       | Stage of their Fundraising                      |


Fields for the Pitch Event table:

| Field Name            | Storage Type | Description                                     |
| :-------------------- | :----------- | :---------------------------------------------- |
| event_name            | string       |                                                 |
| org_name              | string       |                                                 |
| photo_file_name       | string       |                                                 |
| photo_content_type    | string       |                                                 |
| photo_file_size       | integer      |                                                 |
| photo_updated_at      | datetime     |                                                 |
| photo_uploaded_at     | datetime     |                                                 |
| address_1             | string       |                                                 |
| address_2             | string       |                                                 |
| city                  | string       |                                                 |
| state                 | string       |                                                 |
| zip                   | string       |                                                 |
| event_start           | string       |                                                 |
| event_end             | string       |                                                 |
| registration_deadline | string       |                                                 |
| registration_link     | string       |                                                 |
| detail_link           | string       |                                                 |
| contact_name          | string       |                                                 |
| contact_number        | string       |                                                 |
| contact_email         | string       |                                                 |
| local                 | boolean      |                                                 |
| national              | boolean      |                                                 |
| female_founder        | boolean      |                                                 |
| ethnic_founder        | boolean      |                                                 |
| industry              | string       |                                                 |
| latitude              | float        |                                                 |
| longitude             | float        |                                                 |


## API

This app uses a standard REST architecture, but has a separate scope for three reasons:

* to allow calls without admin authentication
* to allow for slightly different filtering capabilities
* to default all requests to not include passed events

With that, the base url will be `covize-pitch-alerts.herokuapp.com/api/`

So an example GET request might look like this: `covize-pitch-alerts.herokuapp.com/api/pitch_events`

which would return a listing of all pitch events in JSON format.

For now, everything is passed in as a url parameter.  Here is a listing:

| HTTP Verb | Controller   | Parameter                                  | Description                                                                                                                          |
| :-------- | :----------- | :----------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------- |
| GET       | Pitch Events | `local={BOOL}`                             | requires returned pitch events to be local                                                                                           |
| GET       | Pitch Events | `national={BOOL}`                          | requires returned pitch events to be national                                                                                        |
| GET       | Pitch Events | `female_founder={BOOL}`                    | requires returned pitch events to target startups with a female founder                                                              |
| GET       | Pitch Events | `ethnic_founder={BOOL}`                    | requires returned pitch events to target startups with a founder of ethnic background                                                |
| GET       | Pitch Events | `industry={STRING}`                        | requires returned pitch events to match the specified industry                                                                       |
| GET       | Pitch Events | `locale={STRING}`                          | requires returned pitch events to match the specified locale                                                                         |
| GET       | Pitch Events | `sort_order={ATTRIBUTE}`                   | sorts according to the following whitelisted attributes: "event_name", "event_start" (default), "event_end", "registration_deadline" |
| GET       | Pitch Events | `starting_index={INT}&ending_index={INT}`  | gives the responses in range of { starting_index, starting_index+1, ... ending_index }                                               |
| POST      | Users        | `personal_name={STRING}&email={string}...` | creates a new user in the users table                                                                                                |