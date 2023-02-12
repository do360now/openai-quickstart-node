import Head from "next/head";
import { useState } from "react";
import styles from "./index.module.css";

export default function Home() {
  const [Input, setInput] = useState("");
  const [result, setResult] = useState();

  async function onSubmit(event) {
    event.preventDefault();
    const response = await fetch("/api/generate", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ text: Input }),
    });
    const data = await response.json();
    setResult(data.result);
    setInput("");
  }

  return (
    <div>
      <Head>
        <title>OpenAI Quickstart</title>
        <link rel="icon" href="/helloai.png" />
      </Head>

      <main className={styles.main}>
        <img src="/helloai.png" className={styles.icon} />
        {/* <h3>Hello Ai,</h3> */}
        <h2><center><p>Hello, how may I help you?</p></center>
        {/* <p>Ask anything you want</p> */}
        </h2>
        <form onSubmit={onSubmit}>
          <input
            type="text"
            name="question"
            placeholder="Ask anything you want :)"
            value={Input}
            onChange={(e) => setInput(e.target.value)}
          />
          <input type="submit" value="Ask Question" />
        </form>
        <div className={styles.result}>{result}</div>
      </main>
    </div>
  );
}
