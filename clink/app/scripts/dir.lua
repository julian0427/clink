-- Copyright (c) 2012 Martin Ridgers
-- License: http://opensource.org/licenses/MIT

--------------------------------------------------------------------------------
local function dir_match_generator(word)
    local matches = {}

    for _, dir in ipairs(os.globdirs(word.."*")) do
        table.insert(matches, dir)
    end

    return matches
end

--------------------------------------------------------------------------------
clink.arg.register_parser("cd", dir_match_generator)
clink.arg.register_parser("chdir", dir_match_generator)
clink.arg.register_parser("pushd", dir_match_generator)
clink.arg.register_parser("rd", dir_match_generator)
clink.arg.register_parser("rmdir", dir_match_generator)
clink.arg.register_parser("md", dir_match_generator)
clink.arg.register_parser("mkdir", dir_match_generator)