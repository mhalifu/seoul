

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('3ec4beb0-d13e-4b66-a02a-be65782abed3', 'Hi', 'It''s me.', '2022-03-03 15:24:30.67178+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('6c8b70b8-e244-4281-bfe2-d98f72db85ee', 'Hello World!', 'Lorem ipsum dolor sit amet, consetetur sadipsscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '2022-03-03 15:24:30.673039+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('9f080fa5-92c1-44ad-9ea7-a0101db094c9', 'test1', 'woa', '2022-03-03 15:28:51.311232+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('19bb8eb7-253b-4ad2-b82d-e03392d102f2', 'test0', '# Title
Lorem ipsum dolor sit amet, consetetur sadipsscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam.
Quite nice.', '2022-03-03 15:29:04.721999+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('28efffb2-f220-4e6f-b339-56f70cd12912', 'test10', '# Hi

this is working', '2022-03-03 20:09:00.811956+01');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('9079ad3e-d319-4e7f-a862-257d9bd692f8', 'test', '# ha
', '2022-03-03 20:12:04.141453+01');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('8dd028e7-6dbb-46ce-a265-b5534da4d994', '9079ad3e-d319-4e7f-a862-257d9bd692f8', 'Manuel', 'Hello man');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('c9ebed04-15aa-4016-900d-40c9879081f2', '9079ad3e-d319-4e7f-a862-257d9bd692f8', 'mee', 'Comment2');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


