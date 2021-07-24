import axios from "axios";
import { authIndex } from "../urls/index";

export const fetchAuth = () => {
	return axios
		.get(authIndex)
		.then((res) => {
			return res.data;
		})
		.catch((e) => console.error(e));
};
