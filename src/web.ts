import { WebPlugin } from '@capacitor/core';

import type { klaviyoPushPlugin } from './definitions';

export class klaviyoPushWeb extends WebPlugin implements klaviyoPushPlugin {
  async api(options: { apikey: string }): Promise<void> {
    console.log(options);
    return
  }
    async identify(options: { email: string }): Promise<void> {
    console.log(options);
    return
  }
    async assignToken(options: { token: Record<string, unknown> }): Promise<void> {
    console.log(options);
    return
  }
}
