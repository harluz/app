import Next from "next";
import Button from "@material-ui/core/Button";

const PrimaryButton = (props) => {
	const { children, onClick } = props;
	return (
		<Button variant="contained" color="primary" onClick={onClick}>
			{children}
		</Button>
	);
};

export default PrimaryButton;
