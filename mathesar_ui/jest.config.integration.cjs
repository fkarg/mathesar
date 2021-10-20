module.exports = {
  preset: 'jest-playwright-preset',
  clearMocks: true,
  verbose: true,
  rootDir: './integration-tests',
  testMatch: ['<rootDir>/**/?(*.)test.ts'],
  transform: {
    '^.+\\.ts$': 'ts-jest',
  },
  testEnvironmentOptions: {
    'jest-playwright': {
      browsers: ['chromium', 'firefox', 'webkit'],
      launchOptions: {
        headless: true,
      },
    },
  },
};
