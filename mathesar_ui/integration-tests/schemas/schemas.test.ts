import { toMatchImageSnapshot } from 'jest-image-snapshot';

expect.extend({ toMatchImageSnapshot });

describe('Schemas', () => {
  beforeEach(async () => {
    await page.goto('http://localhost:8000/mathesar_tables/schemas/');
  });

  it('renders correctly', async () => {
    const image = await page.screenshot();
    expect(image).toMatchImageSnapshot({
      failureThreshold: 0.01,
      failureThresholdType: 'percent',
    });
  });
});

jest.setTimeout(50 * 1000);
