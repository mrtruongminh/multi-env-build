declare global {
  interface Window {
    viteEnvs: {
      [key: string]: string;
    };
  }
}

const getEnvVariable = (key: string) => {
  const windowViteEnvs = window.viteEnvs;
  return windowViteEnvs ? windowViteEnvs[key] : import.meta.env[key];
};

const env = {
  ENV: getEnvVariable("VITE_APP_ENV"),
};

export default env;
