import { WebPlugin } from '@capacitor/core';

import type { klaviyoPushPlugin } from './definitions';

export class klaviyoPushWeb extends WebPlugin implements klaviyoPushPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
