export interface klaviyoPushPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
