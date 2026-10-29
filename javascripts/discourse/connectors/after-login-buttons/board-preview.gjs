// Decorative board preview for the login page's right panel (confirmed
// mockup: Nexus/design/login-mockup.html). Static markup only — no live data.
const NexusIcon = <template>
  <svg viewBox="0 0 64 64" aria-hidden="true">
    <polygon points="32,58 4,46 32,38" fill="#38006b" />
    <polygon points="32,58 60,46 32,38" fill="#6a1b9a" />
    <polygon points="32,8 24,24 40,24" fill="#4a148c" />
    <polygon points="4,46 14,32 20,40" fill="#9c27b0" />
    <polygon points="60,46 50,32 44,40" fill="#9c27b0" />
    <polygon points="32,16 22,34 32,48 42,34" fill="#d500f9" />
    <polygon points="32,16 32,48 42,34" fill="#ea80fc" />
  </svg>
</template>;

const ReplyIcon = <template>
  <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" /></svg>
</template>;

<template>
  <div class="nexus-login-panel" aria-hidden="true">
    <div class="stage">
      <div class="glow a"></div>
      <div class="glow b"></div>

      <div class="board">
        <div class="board-head">
          <span class="board-icon"><NexusIcon /></span>
          <span class="t">최신 글</span>
          <span class="new">새 글 3</span>
        </div>

        <div class="topic">
          <span class="cat"><i style="background:oklch(0.879 0.169 91.605)"></i>공지</span>
          <span class="title">11월 파일럿 운영 일정 안내</span>
          <span class="meta">
            <span class="avatars"><span style="background:oklch(0.75 0.12 25)"></span><span style="background:oklch(0.78 0.12 230)"></span></span>
            방금 전
            <span class="replies"><ReplyIcon />4</span>
          </span>
        </div>
        <div class="topic">
          <span class="cat"><i style="background:oklch(0.845 0.143 164.978)"></i>질문</span>
          <span class="title">배포 후 캐시가 갱신되지 않는 문제</span>
          <span class="meta">
            <span class="avatars"><span style="background:oklch(0.78 0.12 230)"></span><span style="background:oklch(0.8 0.1 300)"></span><span style="background:oklch(0.82 0.12 70)"></span></span>
            12분 전
            <span class="replies"><ReplyIcon />12</span>
          </span>
        </div>
        <div class="topic">
          <span class="cat"><i style="background:oklch(0.75 0.13 250)"></i>기술 공유</span>
          <span class="title">코드 리뷰 체크리스트 정리본</span>
          <span class="meta">
            <span class="avatars"><span style="background:oklch(0.8 0.1 300)"></span></span>
            1시간 전
            <span class="replies"><ReplyIcon />7</span>
          </span>
        </div>
      </div>

      <div class="chip solved">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10" /><path d="m9 12 2 2 4-4" /></svg>
        해결됨
      </div>
      <div class="chip reply">
        <span class="ava"></span>
        <span><span class="k">새 답글</span><span class="v">이 방법으로 해결됐어요!</span></span>
      </div>
    </div>
    <p class="tagline">묻고, 답하고, 기록하는 제품개발본부의 소통, 공유, 발전의 플랫폼</p>
  </div>
</template>
