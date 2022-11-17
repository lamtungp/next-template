import type { AppProps } from "next/app";
import { CacheProvider } from "@emotion/react";
import { useState, useEffect } from "react";
import { ThemeProvider, useTheme } from "@mui/material";
import "@/styles/globals.css";

function MyApp({ Component, pageProps }: AppProps) {
  const theme = useTheme();
  const [isMounted, setMount] = useState(false);

  useEffect(() => {
    setMount(true);
  }, []);

  return <ThemeProvider theme={theme}>{isMounted && <Component {...pageProps} />}</ThemeProvider>;
}

export default MyApp;
