def sign_in_as(user, password)
	post login_path, params: { session: { email: user.email, password: password } }
end