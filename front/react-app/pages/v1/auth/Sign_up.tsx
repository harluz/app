// フォームと送信ボタンのcomponentを組み込みviewを作成
import React, { useState, useEffect } from "react";
import Layout from "../../../components/templates/Layout";
import PrimaryButton from "../../../components/atoms/page/PrimaryButton";
import TextField from "@material-ui/core/TextField";
import Button from "@material-ui/core/Button";
import { fetchAuth } from "../../../src/apis/auth";
import axios from "axios";
import { useRouter } from "next/router";

const Sign_up = (props) => {
	// postするデータを格納する変数を定義する
	const [state, setState] = useState(props);
	const router = useRouter();

	const postUserInfo = () => {
		axios
			.post("http://localhost:3000/v1/auth", {
				name: state.name,
				email: state.email,
				password: state.password,
				password_confirmation: state.password_confirmation,
			})
			.then((response) => {
				console.log(response.data);
				router.push("/v1/PostList");
			})
			.catch((error) => {
				console.log(error.response);
				router.push("/v1/auth/Sign_up");
			});
	};

	// 上記で定義した変数をaxios.postにてrailsのURLに送信する

	return (
		<Layout title="Sign_up">
			新規登録ページ
			<br />
			<TextField
				id="standard-basic-name"
				label="Name"
				value={state.name}
				onChange={(e) => setState({ ...state, name: e.target.value })}
			/>
			<br />
			<TextField
				id="standard-basic-email"
				label="Email"
				value={state.email}
				onChange={(e) => setState({ ...state, email: e.target.value })}
			/>
			<br />
			<TextField
				id="standard-basic-password"
				label="Password"
				value={state.password}
				onChange={(e) => setState({ ...state, password: e.target.value })}
			/>
			<br />
			<TextField
				id="standard-basic-passwordConfirmation"
				label="Password_confirmation"
				value={state.password_confirmation}
				onChange={(e) =>
					setState({ ...state, password_confirmation: e.target.value })
				}
			/>
			<br />
			<PrimaryButton onClick={postUserInfo}>送信</PrimaryButton>
		</Layout>
	);
};

Sign_up.defaultProps = {
	name: "",
	email: "",
	password: "",
	password_confirmation: "",
};

export default Sign_up;
