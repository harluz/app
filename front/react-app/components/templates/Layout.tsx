import Head from "next/head";
import Link from "next/link";

export default function Layout({ children, title = "Default title" }) {
	return (
		<div>
			<Head>
				{/* webページのタイトルを動的にする */}
				{/* コンポーネントに渡されたtitleを下記で展開 */}
				<title>{title}</title>
			</Head>
			<header>
				<nav>
					<div>
						<div>
							{/* pageフォルダーのディレクトリ構造とリンクする */}
							<Link href="/">
								<a>Home</a>
							</Link>
							<Link href="/v1/auth/Sign_up">
								<a>新規登録</a>
							</Link>
						</div>
					</div>
				</nav>
			</header>
			<main>
				{/* 受け取った情報を展開 */}
				{children}
			</main>
		</div>
	);
}
