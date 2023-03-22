import { registerPlugin } from '@capacitor/core';

import type { klaviyoPushPlugin } from './definitions';

const klaviyoPush = registerPlugin<klaviyoPushPlugin>('klaviyoPush', {
  web: () => import('./web').then(m => new m.klaviyoPushWeb()),
});

export * from './definitions';
export { klaviyoPush };
