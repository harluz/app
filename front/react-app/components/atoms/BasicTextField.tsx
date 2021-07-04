import React from "react";
import { createStyles, makeStyles, Theme } from "@material-ui/core/styles";
import TextField from "@material-ui/core/TextField";

const useStyles = makeStyles((theme: Theme) =>
	createStyles({
		root: {
			"& > *": {
				margin: theme.spacing(1),
				width: "25ch",
			},
		},
	})
);

export default function BasicTextField(props) {
	const classes = useStyles();
	const { children } = props;

	return (
		<form className={classes.root} noValidate autoComplete="off">
			<TextField id="standard-basic" label="Standard" />
		</form>
	);
}
