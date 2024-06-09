import { TestBed } from '@angular/core/testing';

import { EspApiService } from './esp-api.service';

describe('EspApiService', () => {
  let service: EspApiService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(EspApiService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
