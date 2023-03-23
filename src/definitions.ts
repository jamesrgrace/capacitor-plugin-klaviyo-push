export interface klaviyoPushPlugin {
  api(options: { apikey: string }): Promise<void>;
  identify(options: { email: string }): Promise<void>;
  assignToken(options: { token: Record<string, unknown> }): Promise<void>;
}
