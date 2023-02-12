const std = @import("std");

const first_post =
	\\i----
	\\i1-16-2023 - Why Gopher?
	\\i----
	\\i
	\\iWell, first, Why not? It seems like a perfectly respectable
	\\iprotocol.  It really is totally fine for my needs -- which at
	\\ithis point is just (micro)blogging.
	\\i
	\\iRecent developments at Twitter have reminded me just how much I
	\\ihave always preferred a federated Internet.  Mastodon is great,
	\\iof course, and I'm pleased to see its accelerated adoption, but
	\\igopher is just _enough_ for me and I'd like to simply revel in the
	\\iretro-ness of it -- for a while, at least.
	\\i
	\\iI plan to continue making gopher://gopher.jonsharp.net my primary
	\\ionline "presence".  I'll stick around here so long as gopher
	\\icontinues to meet my needs and perhaps gives me an opportunity to
	\\icontribute to the gopher world, as well.
	\\i
	\\iWhy not join me?
	\\i
;

const second_post =
	\\i----
	\\i1-20-2023 - Happy Sabbath!
	\\i----
	\\i
	\\iWell, this is the first Sabbath since I started the gopher
	\\ilog, so...
	\\i
	\\iI just wanted to share that I am a Seventh-day Adventist
	\\iChristian and my faith tradition emphasizes the observance
	\\i(celebration!) of the Biblical Sabbath from sundown Friday
	\\ievening to Saturday evening.  It is a real blessing to my
	\\ifamily and I and I just wanted to share that here on the phlog
	\\ifor the first time. (it may not be the last time I mention
	\\iit)
	\\i
	\\iWe begin our celebration of Sabbath with a special meal,
	\\iwith a variety of fresh foods -- fruit, veggies, hummus,
	\\idips, cheese, crackers and freshly-baked Challah bread.
	\\i
	\\iAnyway, Shabat Shalom! (Happy Sabbath!)
	\\i - Jon
	\\
	\\
;

pub fn main() !void {
    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print(second_post, .{});
    try stdout.print(first_post, .{});

    try bw.flush(); // don't forget to flush!
}
