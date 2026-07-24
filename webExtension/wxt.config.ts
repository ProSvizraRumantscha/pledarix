import { defineConfig } from 'wxt';

export default defineConfig({
  srcDir: '.',
  manifestVersion: 3,
  manifest: ({ browser }) => ({
    description: '__MSG_extensionDescription__',
    default_locale: browser === 'firefox' ? 'rm' : 'de',
    host_permissions: ['*://api.pledari.ch/*'],
    icons: {
      48: '/icons/icon-48.png',
      96: '/icons/icon-96.png',
    },
    browser_specific_settings: browser === 'firefox' ? {
      gecko: {
        id: 'pledarix@rumantsch.ch',
        strict_min_version: '109.0',
      },
    } : undefined,
  }),
});
