// フォームと送信ボタンのcomponentを組み込みviewを作成
import Layout from "../../../components/Layout";
import PrimaryButton from "../../../components/atoms/PrimaryButton";
import TextField from "@material-ui/core/TextField";
import Button from "@material-ui/core/Button";

const Sign_up = () => {
	const onClickUserInfo = () => alert();

	return (
		<Layout title="Sign_up">
			新規登録ページ
			<br />
			<TextField id="standard-basic" label="Name" />
			<br />
			<TextField id="standard-basic" label="Email" />
			<br />
			<TextField id="standard-basic" label="Pssword" />
			<br />
			<TextField id="standard-basic" label="Pssword_confirmation" />
			<br />
			<PrimaryButton onClick={onClickUserInfo}>送信</PrimaryButton>
		</Layout>
	);
};

export default Sign_up;
