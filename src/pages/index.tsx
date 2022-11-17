import Layout from "@/layouts";
import Head from "next/head";
import Image from "next/image";
import styles from "@/styles/Home.module.css";

export default function Home() {
  return (
    <Layout>
      <Head>
        <title>Zinza Hackathon</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta property="og:title" content="Next Template" />
        <meta property="og:description" content="" />
      </Head>
    </Layout>
  );
}
