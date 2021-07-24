import Head from "next/head";
import Link from "next/link";

export default function Pagemenu({ children, title = "Default title" }) {
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
							<br />
							<Link href="/v1/PostList">
								<a>投稿一覧</a>
							</Link>
							<br />
							<Link href="/v1/OrderList">
								<a>注文一覧</a>
							</Link>
							<br />
							<Link href="/v1/FavoritesList">
								<a>お気に入り</a>
							</Link>
							<br />
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
