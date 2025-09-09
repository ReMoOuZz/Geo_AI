# GeoBattle

An AI‑powered geography quiz built with Ruby on Rails. Challenge an AI in a chat‑driven quiz or play classic 10‑question rounds with configurable region, category, and difficulty. Track your stats, earn badges, and improve over time.

This app is a Rails 7.1 project (Ruby 3.3.5) using PostgreSQL, Hotwire (Turbo + Stimulus), Importmap, Devise, and Cloudinary for Active Storage. The AI quiz mode is powered by `ruby_llm` with an OpenAI‑compatible API key.


## Features

- AI Quiz Mode:
  - Chat with an AI that generates multiple‑choice geography questions on the fly.
  - Adaptive difficulty based on your performance.
  - Persistent chat history per quiz.

- Game Mode (Classic):
  - 10‑question rounds built from a seeded dataset.
  - Choose region (Europe, Amérique, Océanie, Afrique, Asie), category (Hydrographie et reliefs, Régions et villes du monde, Cultures, Géopolitique, Drapeaux), and difficulty (facile, intermédiaire, difficile).
  - Timed questions with instant feedback and a detailed results screen.
  - Badges and a stats page that summarizes performance by category, difficulty, and region.

- Accounts and Auth:
  - User registration/login via Devise.

- Realtime UX and UI:
  - Turbo Streams and Stimulus controllers for the quiz flow, timers, progress bars, and result animations.
  - Bootstrap 5 and Font Awesome for styling and icons.


## Tech Stack

- Ruby 3.3.5, Rails 7.1
- PostgreSQL
- Hotwire: Turbo + Stimulus (via Importmap)
- Devise for authentication
- Cloudinary (Active Storage service)
- `ruby_llm` for LLM chat (OpenAI‑compatible)
- Bootstrap 5, Font Awesome
- Solid Cable for Action Cable persistence


## Screens and Flow (at a glance)

- Home (`/`): Start an AI quiz (chat) or launch a classic game.
- AI Quiz: Creates a `Quiz` + `Chat`, then iterates Q&A with HTML‑formatted content.
- Classic Game: Select region/category/difficulty, then answer 10 MCQs; see a score screen with badges and missed questions carousel.
- Stats/Profile: Inspect performance per category/difficulty/region across games.


## Getting Started

### Prerequisites

- Ruby 3.3.5 (see `.ruby-version`)
- PostgreSQL 13+
- Bundler (`gem install bundler`)

Cloudinary is configured as the Active Storage service in development. Provide a `CLOUDINARY_URL` or switch to local storage if you prefer.

### Setup

1) Clone and install gems

```
bundle install
```

2) Configure environment variables (create a `.env` file or export via your shell)

```
# Required for AI quiz (OpenAI‑compatible)
OPENAI_API_KEY=sk-...

# Required if using Cloudinary Active Storage
CLOUDINARY_URL=cloudinary://<api_key>:<api_secret>@<cloud_name>
```

3) Database setup and seed

```
bin/rails db:create db:migrate db:seed
```

4) Run the server

```
bin/rails server
```

Visit http://localhost:3000.


## Docker (optional)

This repo includes a production‑oriented `Dockerfile`.

```
docker build -t geobattle .
docker run --env-file .env -p 3000:3000 geobattle
```

Ensure the container can reach your PostgreSQL instance, or provide a `DATABASE_URL` to a reachable database.


## Configuration Notes

- Active Storage: Development is set to `:cloudinary` in `config/environments/development.rb`. You can switch to local storage by setting `config.active_storage.service = :local` and removing Cloudinary envs.
- OpenAI/ruby_llm:
  - The app uses `ruby_llm` with model ids like `gpt-5-chat-latest`. Provide a compatible API key via `OPENAI_API_KEY`.
  - Conversation logic lives in `ChatsController` and `MessagesController`.
- Seeds: `db/seeds.rb` includes a large geography dataset for the classic mode.


## Key Domain Models

- User: Devise‑backed account, avatar via Active Storage.
- Quiz, Chat, Message: AI chat sessions via `ruby_llm` (`acts_as_chat`, `acts_as_message`).
- Game: A playable round with selected region/category/difficulty.
- GameQuestion: The 10 MCQs for a game, derived from `Question` seeds.
- UserAnswer: Records a user’s choice and correctness.
- Score: Tracks the per‑game score for a user.

Routes of interest (`config/routes.rb`):

- `root "pages#home"`
- `resources :chats, only: [:create] do ... end` (AI quiz)
- `resources :quizzes, only: [:show]` (AI quiz display)
- `resources :games, only: [:new, :create, :show]` with nested `user_answers` and `scores`
- Static pages: `/profile`, `/stats`, `/rewards`, `/friends`, `/about`


## Development

- One‑time project setup
  - `bin/setup` prepares the database and clears logs/tmp.

- Run tests
  - `bin/rails test`

- Linting (Rubocop)
  - `bundle exec rubocop`

- Stimulus controllers live in `app/javascript/controllers`.
- Views are under `app/views` (see `games/`, `quizzes/`, `chats/`, `scores/`, `pages/`).


## Roadmap / Notes

- Multiplayer mode UI is present but disabled in the game setup screen; planned for a future iteration.
- Consider moving development Active Storage to `:local` if you don’t need Cloudinary.
- Do not commit real API keys. Use `.env` locally and keep secrets out of VCS.


## License

Copyright © The project authors. All rights reserved.
