local avante = require("avante")
Parse_curl_args_func = function(opts, code_opts)
	return {
		url = opts.endpoint .. "/chat/completions",
		headers = {
			["Accept"] = "application/json",
			["Content-Type"] = "application/json",
		},
		body = {
			model = opts.model,
			messages = require("avante.providers").copilot.parse_messages(code_opts), -- you can make your own message, but this is very advanced
			max_tokens = 2048,
			stream = true,
		},
	}
end

Parse_response_data_func = function(data_stream, event_state, opts)
	require("avante.providers").openai.parse_response(data_stream, event_state, opts)
end

local create_avante_config = function(model, url)
	return {
		["api_key_name"] = "",
		endpoint = url,
		model = model,
		parse_curl_args = Parse_curl_args_func,
		parse_response_data = Parse_response_data_func,
	}
end

local create_ollama_config = function(host, model)
	return create_avante_config(model, string.format("http://%s:11434/v1", host))
end

local create_openai_config = function(model)
	local oai = create_avante_config(model, "https://api.openai.com/v1/")
	oai["api_key_name"] = "OPENAI_API_KEY"
	return oai
end

avante.setup({
	provider = "qwen", -- qwen
	vendors = {
		qwen = create_ollama_config("localhost", "qwen2.5-coder:latest"),
	},
	--- @class AvanteConflictUserConfig
	diff = {
		autojump = true,
		---@type string | fun(): any
		list_opener = "copen",
		--- Override the 'timeoutlen' setting while hovering over a diff (see :help timeoutlen).
		--- Helps to avoid entering operator-pending mode with diff mappings starting with `c`.
		--- Disable by setting to -1.
		override_timeoutlen = 500,
	},
})
