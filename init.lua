-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "Containerfile",
  files = { "Containerfile", "Dockerfile", "%.containerfile", "%.dockerfile", "%.Containerfile", "%.Dockerfile" },
  comment = "#",
  patterns = {
    { pattern = "#.*\n", type = "comment" },
    
    -- Keywords
    { pattern = "FROM", type = "keyword" },
    { pattern = "ARG", type = "keyword2" },
    { pattern = "ENV", type = "keyword2" },
    { pattern = "RUN", type = "keyword2" },
    { pattern = "ADD", type = "keyword2" },
    { pattern = "COPY", type = "keyword2" },
    { pattern = "WORKDIR", type = "keyword2" },
    { pattern = "USER", type = "keyword2" },
    { pattern = "LABEL", type = "keyword2" },
    { pattern = "EXPOSE", type = "keyword2" },
    { pattern = "VOLUME", type = "keyword2" },
    { pattern = "ONBUILD", type = "keyword2" },
    { pattern = "STOPSIGNAL", type = "keyword2" },
    { pattern = "HEALTHCHECK", type = "keyword2" },
    { pattern = "SHELL", type = "keyword2" },
    
    -- Functions
    { pattern = "ENTRYPOINT", type = "function" },
    { pattern = "CMD", type = "function" },
    { pattern = { "%[", "%]" }, type = "string" },
    
    -- Literals
    { pattern = "%sas%s", type = "literal" },
    { pattern = "--platform=", type = "literal" },
    { pattern = "--chown=", type = "literal" },
  },
  symbols = {},
}
