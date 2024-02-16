# Authelia Validate

This action run a validation check on an authelia configuration file.

## Inputs

### `file-path`

**Required** The file path from the repositroy root to the configuration.yml file. Default `./configuration.yml`.

## Enironment Variables

If the configuration file excludes any setting in favor of pulling them from an environment variable then those variables will also need to be set in the action. Any string can be used instead of actual enviroment variables being used with the exception of `AUTHELIA_STORAGE_ENCRYPTION_KEY` which must be at least 20 characters long. An example of using these dummy environment variables is included in the example below.

## Example usage

```yml

steps:
  - name: Checkout repository
    uses: actions/checkout@v4

  - name: Validate config
    uses: bubylou/authelia-validate@v1
    env:
      AUTHELIA_JWT_SECRET: test
      AUTHELIA_SESSION_SECRET: test
      AUTHELIA_STORAGE_ENCRYPTION_KEY: twentycharacterslong
    with:
      file-path: ./authelia/configuration.yml
```
