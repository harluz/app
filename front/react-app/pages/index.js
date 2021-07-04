import Head from "next/head";
import Image from "next/image";
import styles from "../styles/Home.module.css";
import Layout from "../components/Layout";

export default function Home() {
	return (
		// Layoutコンポーネントで全体を囲む
		<Layout title="Home">
			<p>This page is Top page</p>
		</Layout>
	);
}
