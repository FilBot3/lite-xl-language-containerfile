-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "Containerfile",
  files = { "Containerfile", "Dockerfile", "%.containerfile", "%.dockerfile", "%.Containerfile", "%.Dockerfile" },
  comment = "#",
  patterns = {
    { pattern = "#.*\n", type = "comment" },

    -- Functions
    { pattern = { "%[", "%]" }, type = "string" },

    -- Literals
    { pattern = "%sas%s", type = "literal" },
    { pattern = "--platform=", type = "literal" },
    { pattern = "--chown=", type = "literal" },

    -- Symbols
    { pattern = "[%a_][%w_]*", type = "symbol" },
  },
  symbols = {
    ["FROM"] = "keyword",
    ["ARG"] = "keyword2",
    ["ENV"] = "keyword2",
    ["RUN"] = "keyword2",
    ["ADD"] = "keyword2",
    ["COPY"] = "keyword2",
    ["WORKDIR"] = "keyword2",
    ["USER"] = "keyword2",
    ["LABEL"] = "keyword2",
    ["EXPOSE"] = "keyword2",
    ["VOLUME"] = "keyword2",
    ["ONBUILD"] = "keyword2",
    ["STOPSIGNAL"] = "keyword2",
    ["HEALTHCHECK"] = "keyword2",
    ["SHELL"] = "keyword2",
    ["ENTRYPOINT"] = "function",
    ["CMD"] = "function",
  },
}
